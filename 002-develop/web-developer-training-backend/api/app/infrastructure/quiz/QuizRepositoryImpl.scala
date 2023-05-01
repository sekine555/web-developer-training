package infrastructure.quiz

import domain.quiz.{ Quiz, QuizRepository }
import scalikejdbc._

class QuizRepositoryImpl extends QuizRepository {
  private val q = QuizEntity.syntax("q")

  override def findByGenreId(genreId: Long)(implicit session: DBSession): List[Quiz] = {
    withSQL(select.from(QuizEntity as q).where.eq(q.genreId, genreId).orderBy(q.id))
      .map(QuizEntity(q.resultName))
      .list
      .apply()
      .map(quiz => Quiz.build(quiz))
  }
}
