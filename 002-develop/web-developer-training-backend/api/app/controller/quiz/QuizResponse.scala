package controller.quiz

import play.api.libs.json.{ Json, Writes }

case class QuizResponse(
    id: Int,
    genreId: Int,
    question: String,
    options: List[QuizOptionResponse],
    answer: QuizAnswerResponse
)

object QuizResponse {
  implicit val writes: Writes[QuizResponse] = Json.writes[QuizResponse]
}
