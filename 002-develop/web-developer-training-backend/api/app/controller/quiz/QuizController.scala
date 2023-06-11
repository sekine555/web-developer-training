package controller.quiz

import application.genre.GenreService
import application.quiz.QuizService
import com.google.inject.{ Inject, Singleton }
import controller.common.DefaultController
import controller.genre.GenreResponse
import domain.error.exception.{ NotFoundResourceException, RequestValidationException }
import play.api.mvc._
import play.api.libs.json._

@Singleton
class QuizController @Inject() (
    val cc: ControllerComponents,
    val quizService: QuizService,
    val genreService: GenreService
) extends DefaultController(cc) {
  def getQuizListByGenreId(genreId: Long) = Action {
    genreService.getGenreById(genreId) match {
      case Some(genreDto) =>
        val quizDtoList = quizService.getQuizListByGenreId(genreId)
        val quizzes = quizDtoList
          .map(
            quiz =>
              Quiz(
                quiz.id.toInt,
                quiz.genreId.toInt,
                quiz.question,
                quiz.options
                  .map(
                    option => QuizOptionResponse(option.id.toInt, option.optionNumber, option.option)
                  )
                  // 選択肢の昇順にする
                  .sortBy(_.optionNumber),
                QuizAnswerResponse(isCorrect = false, explanation = null)
              )
            // quiz.idの昇順にする
          )
          .sortBy(_.id)

        val quizResponse = QuizResponse(
          GenreResponse(genreDto.id.toInt, genreDto.genreCode, genreDto.genreName),
          quizzes
        )
        Ok(Json.toJson(quizResponse))

      case None => throw NotFoundResourceException(s"Genre with ID $genreId not found")
    }
  }

  def verifyAnswer = Action(parse.json) { request =>
    val quizAnswerRequest = validateRequest[QuizAnswerRequest](request.body)
    val quizAnswer = quizService.verifyAnswer(quizAnswerRequest.quizId, quizAnswerRequest.quizChoiceId)
    Ok(
      Json.toJson(
        QuizAnswerResponse(
          quizAnswer.isCorrect,
          quizAnswer.explanation
        )
      )
    )
  }

  def getQuizAnswerByQuizId(quizId: Long) = Action {
    val quizExplanation = quizService.getQuizAnswerByQuizId(quizId)
    Ok(
      Json.toJson(
        QuizExplanationResponse(
          quizExplanation.correctAnswerId.toInt,
          quizExplanation.explanation
        )
      )
    )
  }
}
