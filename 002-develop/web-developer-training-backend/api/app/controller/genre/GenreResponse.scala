package controller.genre

import play.api.libs.json.{ Json, Writes }

case class GenreResponse(id: Int, genreCode: String, genreName: String)

object GenreResponse {
  implicit val writes: Writes[GenreResponse] = Json.writes[GenreResponse]
}
