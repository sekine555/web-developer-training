package application.genre

import domain.genre.{ GenreRepository }
import scalikejdbc._

import javax.inject.Inject

class GenreServiceImpl @Inject() (val genreRepository: GenreRepository) extends GenreService {
  override def getGenres: List[GenreDto] = {
    DB localTx { implicit session =>
      genreRepository.findAll().map(genre => GenreDto(genre.id, genre.genreCode, genre.genreName))
    }
  }

  override def getGenreById(id: Long): Option[GenreDto] = {
    DB localTx { implicit session =>
      genreRepository.findById(id).map(genre => GenreDto(genre.id, genre.genreCode, genre.genreName))
    }
  }
}
