package domain.genre

import com.google.inject.ImplementedBy
import infrastructure.genre.GenreRepositoryImpl
import scalikejdbc.DBSession

@ImplementedBy(classOf[GenreRepositoryImpl])
trait GenreRepository {
  def findAll()(implicit session: DBSession): List[Genre]
}
