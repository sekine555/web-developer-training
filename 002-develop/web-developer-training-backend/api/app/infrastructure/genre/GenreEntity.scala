package infrastructure.genre

import org.joda.time.DateTime
import scalikejdbc._
import scalikejdbc.jodatime.JodaTypeBinder._

case class GenreEntity(id: Long, genreName: String, createdAt: DateTime, updatedAt: DateTime) {}

object GenreEntity extends SQLSyntaxSupport[GenreEntity] {
  override val tableName: String = "genre"
  override val columns = Seq("id", "genre_name", "created_at", "updated_at")

  def apply(g: SyntaxProvider[GenreEntity])(rs: WrappedResultSet): GenreEntity = apply(g.resultName)(rs)
  def apply(g: ResultName[GenreEntity])(rs: WrappedResultSet): GenreEntity = new GenreEntity(
    id = rs.get(g.id),
    genreName = rs.get(g.genreName),
    createdAt = rs.get(g.createdAt),
    updatedAt = rs.get(g.updatedAt)
  )
}
