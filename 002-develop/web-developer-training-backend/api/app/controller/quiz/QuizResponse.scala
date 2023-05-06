package controller.quiz

import controller.genre.GenreResponse
import play.api.libs.json.{ Json, Writes }

case class QuizResponse(
    genre: GenreResponse,
    quizzes: List[Quiz]
)

case class Quiz(
    id: Int,
    genreId: Int,
    question: String,
    options: List[QuizOptionResponse],
    answer: QuizAnswerResponse
)

object Quiz {
  implicit val writes: Writes[Quiz] = Json.writes[Quiz]
}

object QuizResponse {
  implicit val writes: Writes[QuizResponse] = Json.writes[QuizResponse]
}
