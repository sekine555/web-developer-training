package domain.quiz

case class QuizAnswer private (isCorrect: Boolean, explanation: String) {}

object QuizAnswer {
  def build(isCorrect: Boolean, explanation: String): QuizAnswer = {
    new QuizAnswer(isCorrect, explanation)
  }
}
