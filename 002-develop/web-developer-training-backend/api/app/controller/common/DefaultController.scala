package controller.common

import domain.error.exception.RequestValidationException
import play.api.libs.json.{JsValue, Reads}
import play.api.mvc.{AbstractController, ControllerComponents}

abstract class DefaultController(cc: ControllerComponents) extends AbstractController(cc) {
  protected def validateRequest[A](request: JsValue)(implicit rds: Reads[A]): A = {
    request.validate[A].fold(
      errors => {
        val errorMessage = errors
          .flatMap {
            case (path, validationErrors) =>
              validationErrors.map(e => s"${path.toJsonString}: ${e.message}")
          }
          .mkString(", ")

        throw RequestValidationException(errorMessage)
      },
      validRequest => validRequest
    )
  }
}
