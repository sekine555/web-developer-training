package controller.quiz

import play.api.libs.json.{ Json, Reads }

case class QuizAnswerRequest(quizId: Long, quizChoiceId: Long)

object QuizAnswerRequest {
  implicit val reads: Reads[QuizAnswerRequest] = Json.reads[QuizAnswerRequest]
}
