package domain.genre

import scalikejdbc.DBSession

trait GenreRepository {
  def findAll()(implicit session: DBSession): List[Genre]
}
