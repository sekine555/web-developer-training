package infrastructure.genre

import domain.genre.{ Genre, GenreRepository }
import scalikejdbc._

class GenreRepositoryImpl extends GenreRepository {
  private val g = GenreEntity.syntax("g")

  override def findAll()(implicit session: DBSession): List[Genre] = {
    withSQL(select.from(GenreEntity as g).orderBy(g.id))
      .map(GenreEntity(g.resultName))
      .list
      .apply()
      .map(genre => Genre.build(genre))
  }
}
