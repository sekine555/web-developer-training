package domain.error

import play.api.libs.json.{ Json, Writes }

case class ErrorResponse(
    statusCode: Int,
    errorReason: String,
    message: String,
    path: String
)

object ErrorResponse {
  implicit val writes: Writes[ErrorResponse] = Json.writes[ErrorResponse]
}
