package domain.error.exception

case class RequestValidationException(message: String = "") extends Exception(message)
