package controller.quiz

case class QuizOptionResponse(id: Int, optionNumber: Int, option: String)

object QuizOptionResponse {
  import play.api.libs.json.{ Json, Writes }

  implicit val writes: Writes[QuizOptionResponse] = Json.writes[QuizOptionResponse]
}
