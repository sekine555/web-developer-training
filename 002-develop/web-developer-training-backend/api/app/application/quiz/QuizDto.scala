package application.quiz

case class QuizDto(id: Long, genreId: Long, question: String, options: List[QuizOptionDto])
