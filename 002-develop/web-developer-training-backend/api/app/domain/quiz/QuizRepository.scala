package domain.quiz

import com.google.inject.ImplementedBy
import infrastructure.quiz.QuizRepositoryImpl
import scalikejdbc.DBSession

@ImplementedBy(classOf[QuizRepositoryImpl])
trait QuizRepository {
  def findByGenreId(genreId: Long)(implicit session: DBSession): List[Quiz]
}
