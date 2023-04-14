package application.genre

import domain.genre.GenreRepository
import scalikejdbc._

import javax.inject.Inject

class GenreImplService @Inject() (genreRepository: GenreRepository) extends GenreService {
  override def getGenres: List[GenreDto] = {
    DB localTx { implicit session =>
      val genres = genreRepository.findAll()
      genres.map(genre => GenreDto(genre.id, genre.genreName))
    }
  }
}
