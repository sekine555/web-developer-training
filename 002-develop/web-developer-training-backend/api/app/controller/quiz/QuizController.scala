package controller.quiz

import application.quiz.QuizService
import com.google.inject.{ Inject, Singleton }
import play.api.mvc._
import play.api.libs.json._

@Singleton
class QuizController @Inject() (val cc: ControllerComponents, val quizService: QuizService)
    extends AbstractController(cc) {
  def getQuizListByGenreId(genreId: Long) = Action {
    Ok(
      Json.toJson(
        quizService
          .getQuizListByGenreId(genreId)
          .map(
            quiz =>
              QuizResponse(
                quiz.id.toInt,
                quiz.genreId.toInt,
                quiz.question,
                quiz.options.map(option => QuizOptionResponse(option.id.toInt, option.option))
              )
          )
      )
    )
  }
}
