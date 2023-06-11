package domain.quiz

import domain.error.exception.CreateQuizException
import infrastructure.quiz.{ QuizChoiceEntity, QuizEntity }

case class Quiz private (id: Long, genreId: Long, question: String, options: List[QuizChoice]) {
  if (id < 0) {
    throw CreateQuizException("Quiz idは自然数である必要があります")
  }
  if (genreId < 0) {
    throw CreateQuizException("Genre idは自然数である必要があります")
  }
  if (question.length > 1000) {
    throw CreateQuizException("Questionは1000文字以内である必要があります")
  }
}

object Quiz {
  def build(quizEntity: QuizEntity, quizChoiceEntityList: List[QuizChoiceEntity]): Quiz = {
    new Quiz(quizEntity.id, quizEntity.genreId, quizEntity.question, quizChoiceEntityList.map(QuizChoice.build))
  }
}
