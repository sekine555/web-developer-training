package config

import play.api.http.HttpErrorHandler
import play.api.mvc.Results.Status
import play.api.mvc.{ RequestHeader, Result }

import scala.concurrent.Future

class ErrorHandler extends HttpErrorHandler {
  override def onClientError(request: RequestHeader, statusCode: Int, message: String): Future[Result] = ???

  override def onServerError(request: RequestHeader, exception: Throwable): Future[Result] = {
    Future.successful(Status(500)("A server error occurred: " + exception.getMessage))
  }
}
