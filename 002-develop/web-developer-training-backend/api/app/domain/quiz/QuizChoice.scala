package domain.quiz

import infrastructure.quiz.QuizChoiceEntity

case class QuizChoice private (id: Long, quizId: Long, content: String, isAnswer: Boolean, explanation: String) {
  if (content.length > 1000) {
    throw new CreateQuizException("Contentは1000文字以内である必要があります")
  }
}

object QuizChoice {
  def build(quizChoiceEntity: QuizChoiceEntity): QuizChoice = {
    new QuizChoice(
      quizChoiceEntity.id,
      quizChoiceEntity.quizId,
      quizChoiceEntity.content,
      quizChoiceEntity.isAnswer,
      quizChoiceEntity.explanation
    )
  }
}
