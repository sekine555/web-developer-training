package domain.quiz

import infrastructure.quiz.QuizEntity

case class Quiz private (id: Long, genreId: Long, question: String) {
  if (id < 0) {
    throw new CreateQuizException("Quiz idは自然数である必要があります")
  }
  if (genreId < 0) {
    throw new CreateQuizException("Genre idは自然数である必要があります")
  }
  if (question.length > 1000) {
    throw new CreateQuizException("Questionは1000文字以内である必要があります")
  }
}

object Quiz {
  def build(quizEntity: QuizEntity): Quiz = {
    new Quiz(quizEntity.id, quizEntity.genreId, quizEntity.question)
  }
}
