package controller.genre

import application.genre.GenreService
import play.api.mvc._
import play.api.libs.json._

import javax.inject.{Inject, Singleton}

@Singleton
class GenreController @Inject()(val cc: ControllerComponents, genreService: GenreService) extends AbstractController(cc) {
  def getAllGenre() = Action {
    val genreDtoList = genreService.getGenres
    val genreResponse = genreDtoList.map(genre => GenreResponse(genre.id.toInt, genre.genreName))
    // TODO: JSONでレスポンス
    // [ { id: 1, genreName: "フロントエンド" }, { id: 2, genreName: "バックエンド" } ]
    Ok(Json.toJson(Map("message" -> "Hello Play")))
  }
}
