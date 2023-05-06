package application.genre

import com.google.inject.ImplementedBy

@ImplementedBy(classOf[GenreServiceImpl])
trait GenreService {
  def getGenres: List[GenreDto]
  def getGenreById(id: Long): Option[GenreDto]
}
