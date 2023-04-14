package controller.genre

import application.genre.GenreService
import com.google.inject.{ Inject, Singleton }
import play.api.mvc._
import play.api.libs.json._

@Singleton
class GenreController @Inject() (val cc: ControllerComponents, val genreService: GenreService)
    extends AbstractController(cc) {
  def getAllGenre() = Action {
    Ok(
      Json.toJson(
        genreService.getGenres
          .map(genre => GenreResponse(genre.id.toInt, genre.genreName))
      )
    )
  }
}
