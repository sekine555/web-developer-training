package domain.error.exception

case class CreateGenreException(message: String = "") extends Exception(message)
