package infrastructure.quiz

import org.joda.time.DateTime
import scalikejdbc._
import scalikejdbc.jodatime.JodaTypeBinder._

case class QuizChoiceEntity(
    id: Long,
    quizId: Long,
    optionNumber: Int,
    content: String,
    isAnswer: Boolean,
    explanation: String,
    createdAt: DateTime,
    updatedAt: DateTime
) {}

object QuizChoiceEntity extends SQLSyntaxSupport[QuizChoiceEntity] {
  override val tableName: String = "quiz_choice"
  override val columns =
    Seq("id", "quiz_id", "option_number", "content", "is_answer", "explanation", "created_at", "updated_at")

  def apply(q: SyntaxProvider[QuizChoiceEntity])(rs: WrappedResultSet): QuizChoiceEntity = apply(q.resultName)(rs)
  def apply(q: ResultName[QuizChoiceEntity])(rs: WrappedResultSet): QuizChoiceEntity = new QuizChoiceEntity(
    id = rs.get(q.id),
    quizId = rs.get(q.quizId),
    optionNumber = rs.get(q.optionNumber),
    content = rs.get(q.content),
    isAnswer = rs.get(q.isAnswer),
    explanation = rs.get(q.explanation),
    createdAt = rs.get(q.createdAt),
    updatedAt = rs.get(q.updatedAt)
  )
}
