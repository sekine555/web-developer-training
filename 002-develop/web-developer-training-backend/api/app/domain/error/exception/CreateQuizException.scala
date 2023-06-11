package domain.error.exception

case class CreateQuizException(message: String = "") extends Exception(message)
