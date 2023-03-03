package infrastructure.genre

import domain.genre.{Genre, GenreRepository}
import scalikejdbc._

class GenreImplRepository extends GenreRepository {
  private val g = GenreEntity.syntax("g")

  override def findAll()(implicit session: DBSession): List[Genre] = {
    val genreEntityList = withSQL(select.from(GenreEntity as g).orderBy(g.id)).map(GenreEntity(g.resultName)).list.apply()
    genreEntityList.map(genre => Genre(genre.id, genre.genreName))
  }
}
