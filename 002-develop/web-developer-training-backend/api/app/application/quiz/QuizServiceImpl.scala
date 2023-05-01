package application.quiz

import domain.quiz.QuizRepository
import scalikejdbc._

import javax.inject.Inject

class QuizServiceImpl @Inject() (val quizRepository: QuizRepository) extends QuizService {
  override def getQuizListByGenreId(genreId: Long): List[QuizDto] = {
    DB localTx { implicit session =>
      quizRepository
        .findByGenreId(genreId)
        .map(
          quiz =>
            QuizDto(
              quiz.id,
              quiz.genreId,
              quiz.question,
              quiz.options.map(option => QuizOptionDto(option.id, option.content))
            )
        )
    }
  }

  override def verifyAnswer(quizId: Long, quizChoiceId: Long): QuizAnswerDto = {
    DB localTx { implicit session =>
      val quizAnswer = quizRepository.verifyAnswer(quizId, quizChoiceId)
      QuizAnswerDto(quizAnswer.isCorrect, quizAnswer.explanation)
    }
  }
}
