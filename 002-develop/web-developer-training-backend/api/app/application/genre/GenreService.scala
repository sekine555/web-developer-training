package application.genre

trait GenreService {
  def getGenres: List[GenreDto]
}
