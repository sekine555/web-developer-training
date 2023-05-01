package domain.genre

import infrastructure.genre.GenreEntity

case class Genre private (id: Long, genreCode: String, genreName: String) {
  if (id < 0) {
    throw new CreateGenreException("Genre idは自然数である必要があります")
  }
  if (genreName.length > 30) {
    throw new CreateGenreException("Genre nameは30文字以内である必要があります")
  }
}

object Genre {
  def build(genreEntity: GenreEntity): Genre = {
    new Genre(genreEntity.id, genreEntity.genreCode, genreEntity.genreName)
  }
}
