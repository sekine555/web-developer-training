package controller.quiz

import play.api.libs.json.{ Json, Writes }

case class QuizAnswerResponse(isCorrect: Boolean, explanation: String)

object QuizAnswerResponse {
  implicit val writes: Writes[QuizAnswerResponse] = Json.writes[QuizAnswerResponse]
}
