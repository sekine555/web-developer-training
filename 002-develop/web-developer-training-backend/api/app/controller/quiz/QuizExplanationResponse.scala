package controller.quiz

import play.api.libs.json.{ Json, Writes }

case class QuizExplanationResponse(correctAnswerId: Int, explanation: String)

object QuizExplanationResponse {
  implicit val writes: Writes[QuizExplanationResponse] = Json.writes[QuizExplanationResponse]
}
