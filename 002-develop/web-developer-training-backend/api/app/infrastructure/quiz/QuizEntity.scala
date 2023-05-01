package infrastructure.quiz

import org.joda.time.DateTime
import scalikejdbc._
import scalikejdbc.jodatime.JodaTypeBinder._

case class QuizEntity(
    id: Long,
    genreId: Long,
    question: String,
    createdAt: DateTime,
    updatedAt: DateTime
) {}

object QuizEntity extends SQLSyntaxSupport[QuizEntity] {
  override val tableName: String = "quiz"
  override val columns = Seq("id", "genre_id", "question", "created_at", "updated_at")

  def apply(q: SyntaxProvider[QuizEntity])(rs: WrappedResultSet): QuizEntity = apply(q.resultName)(rs)
  def apply(q: ResultName[QuizEntity])(rs: WrappedResultSet): QuizEntity = new QuizEntity(
    id = rs.get(q.id),
    genreId = rs.get(q.genreId),
    question = rs.get(q.question),
    createdAt = rs.get(q.createdAt),
    updatedAt = rs.get(q.updatedAt)
  )
}
