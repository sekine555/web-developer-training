export interface Option {
  id: number;
  optionNumber: number;
  option: string;
}

export interface Quiz {
  id: number;
  genreId: number;
  question: string;
  options: Option[];
  answer: QuizAnswer;
}

export interface QuizAnswerRequest {
  quizId: number;
  quizChoiceId: number;
}

export interface QuizAnswer {
  isCorrect: boolean;
  explanation: string | null;
}

export interface QuizExplanation {
  correctAnswerId: number;
  explanation: string;
}
