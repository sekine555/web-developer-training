package domain.error.exception

case class NotFoundResourceException(message: String = "") extends Exception(message)
