package config

import domain.error.ErrorResponse
import domain.error.exception.{
  CreateGenreException,
  CreateQuizException,
  NotFoundResourceException,
  RequestValidationException
}
import play.api.http.HttpErrorHandler
import play.api.libs.json.Json
import play.api.mvc.Results._
import play.api.mvc.{ RequestHeader, Result }

import javax.inject.Singleton
import scala.concurrent.Future

@Singleton
class ErrorHandler extends HttpErrorHandler {

  override def onClientError(request: RequestHeader, statusCode: Int, message: String): Future[Result] = {
    val errorResponse = ErrorResponse(
      statusCode,
      "ClientError",
      message,
      request.path
    )
    Future.successful(Status(statusCode)(Json.toJson(errorResponse)))
  }

  /**
    * アプリケーション内での明示的な例外をハンドリングする
    * @param request
    * @param exception
    * @return
    */
  override def onServerError(request: RequestHeader, exception: Throwable): Future[Result] = {
    exception match {
      case e: RequestValidationException =>
        val errorResponse = ErrorResponse(
          400,
          "RequestValidationException",
          e.getMessage,
          request.path
        )
        Future.successful(BadRequest(Json.toJson(errorResponse)))

      case e: NotFoundResourceException =>
        val errorResponse = ErrorResponse(
          404,
          "NotFoundResourceException",
          e.getMessage,
          request.path
        )
        Future.successful(NotFound(Json.toJson(errorResponse)))

      case e: CreateQuizException =>
        val errorResponse = ErrorResponse(
          400,
          "CreateQuizException",
          e.getMessage,
          request.path
        )
        Future.successful(BadRequest(Json.toJson(errorResponse)))

      case e: CreateGenreException =>
        val errorResponse = ErrorResponse(
          400,
          "CreateGenreException",
          e.getMessage,
          request.path
        )
        Future.successful(BadRequest(Json.toJson(errorResponse)))

      case e: Exception =>
        val errorResponse = ErrorResponse(
          500,
          "InternalServerError",
          e.getMessage,
          request.path
        )
        Future.successful(InternalServerError(Json.toJson(errorResponse)))
    }
  }
}
