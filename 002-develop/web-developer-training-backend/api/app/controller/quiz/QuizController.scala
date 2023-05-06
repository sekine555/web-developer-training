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
                quiz.options.map(option => QuizOptionResponse(option.id.toInt, option.optionNumber, option.option))
              )
          )
      )
    )
  }

  def verifyAnswer = Action(parse.json) { request =>
    request.body
      .validate[QuizAnswerRequest]
      .fold(
        errors => BadRequest(Json.obj("message" -> JsError.toJson(errors))),
        quizAnswerRequest => {
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
