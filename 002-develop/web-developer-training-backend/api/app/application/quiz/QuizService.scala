package application.quiz

import com.google.inject.ImplementedBy

@ImplementedBy(classOf[QuizServiceImpl])
trait QuizService {
  def getQuizListByGenreId(genreId: Long): List[QuizDto]
  def verifyAnswer(quizId: Long, quizChoiceId: Long): QuizAnswerDto
  def getQuizAnswerByQuizId(quizId: Long): QuizExplanationDto
}
