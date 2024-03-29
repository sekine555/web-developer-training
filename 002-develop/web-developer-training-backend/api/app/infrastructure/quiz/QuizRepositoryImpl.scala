package infrastructure.quiz

import domain.error.exception.NotFoundResourceException
import domain.quiz.{ Quiz, QuizAnswer, QuizExplanation, QuizRepository }
import scalikejdbc._

class QuizRepositoryImpl extends QuizRepository {
  private val q = QuizEntity.syntax("q")
  private val qc = QuizChoiceEntity.syntax("qc")

  override def findByGenreId(genreId: Long)(implicit session: DBSession): List[Quiz] = {
    // ここで、QuizEntityとQuizChoiceEntityを結合して、QuizEntityとQuizChoiceEntityのタプルのリストを取得する
    // result = [  (QuizEntity(1, 1, "Question 1", ...), QuizChoiceEntity(1, 1, "Choice 1", ...)),  (QuizEntity(1, 1, "Question 1", ...), QuizChoiceEntity(2, 1, "Choice 2", ...)),  (QuizEntity(1, 1, "Question 1", ...), QuizChoiceEntity(3, 1, "Choice 3", ...)),  (QuizEntity(2, 1, "Question 2", ...), QuizChoiceEntity(4, 2, "Choice 1", ...)),  (QuizEntity(2, 1, "Question 2", ...), QuizChoiceEntity(5, 2, "Choice 2", ...)),  ...]
    val result = withSQL {
      select
        .from(QuizEntity as q)
        .join(QuizChoiceEntity as qc)
        .on(q.id, qc.quizId)
        .where
        .eq(q.genreId, genreId)
        .orderBy(q.id.asc)
    }.map(rs => {
        val quizEntity = QuizEntity(q.resultName)(rs)
        val quizChoiceEntity = QuizChoiceEntity(qc.resultName)(rs)
        (quizEntity, quizChoiceEntity)
      })
      .list
      .apply()

    val quizzesWithChoices = result
      .groupBy(_._1)
      .map {
        case (quizEntity, quizEntityAndChoiceEntities) =>
          val quizChoiceEntities = quizEntityAndChoiceEntities.map(_._2)
          Quiz.build(quizEntity, quizChoiceEntities)
      }
      .toList

    quizzesWithChoices
  }

  override def verifyAnswer(quizId: Long, quizChoiceId: Long)(implicit session: DBSession): QuizAnswer = {
    val qc = QuizChoiceEntity.syntax("qc")

    val quizChoiceEntityOpt = withSQL {
      select
        .from(QuizChoiceEntity as qc)
        .where(
          sqls
            .eq(qc.quizId, quizId)
            .and
            .eq(qc.id, quizChoiceId)
        )
    }.map(QuizChoiceEntity(qc.resultName)).single.apply()

    quizChoiceEntityOpt match {
      case Some(quizChoiceEntity) => QuizAnswer.build(quizChoiceEntity.isAnswer, quizChoiceEntity.explanation)
      case None =>
        throw NotFoundResourceException(s"Quiz choice not found. >>> quizId: $quizId, quizChoiceId: $quizChoiceId")
    }
  }

  override def findAnswerByQuizId(quizId: Long)(implicit session: DBSession): QuizExplanation = {
    val qc = QuizChoiceEntity.syntax("qc")

    val quizChoiceEntityOpt = withSQL {
      select
        .from(QuizChoiceEntity as qc)
        .where(
          sqls
            .eq(qc.quizId, quizId)
            .and
            .eq(qc.isAnswer, true)
        )
    }.map(QuizChoiceEntity(qc.resultName)).single.apply()

    quizChoiceEntityOpt match {
      case Some(quizChoiceEntity) => QuizExplanation.build(quizChoiceEntity.id, quizChoiceEntity.explanation)
      case None                   => throw NotFoundResourceException(s"Quiz choice not found. >>> quizId: $quizId")
    }
  }
}
