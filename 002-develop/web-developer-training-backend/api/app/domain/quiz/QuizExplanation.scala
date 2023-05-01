package domain.quiz

case class QuizExplanation private (correctAnswerId: Long, explanation: String) {}

object QuizExplanation {
  def build(correctAnswerId: Long, explanation: String): QuizExplanation = {
    new QuizExplanation(correctAnswerId, explanation)
  }
}
