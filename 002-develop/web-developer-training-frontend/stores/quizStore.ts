import { defineStore } from "pinia";
import {
  Quiz,
  QuizAnswer,
  QuizAnswerRequest,
  QuizExplanation,
} from "~/types/quiz";

interface QuizState {
  quizzes: Quiz[];
}

export const useQuizStore = defineStore({
  id: "quiz",
  state: () =>
    ({
      quizzes: [],
    } as QuizState),
  getters: {
    getQuizzes(state) {
      return state.quizzes;
    },
    /**
     * クイズ数と正解数を取得する
     * @param state
     * @returns クイズ数と正解数
     */
    getQuizResult(state) {
      const quizCount = state.quizzes.length;
      const correctCount = state.quizzes.filter((quiz) => {
        return quiz.answer.isCorrect;
      }).length;
      return {
        quizCount,
        correctCount,
      };
    },
  },
  actions: {
    setQuizzes(quizzes: Quiz[]) {
      this.quizzes = quizzes;
    },
    /**
     * クイズの解答を更新する
     * @param quizId クイズID
     * @param answer クイズ解答
     */
    updateQuizAnswer(quizId: number, answer: QuizAnswer) {
      const quiz = this.quizzes.find((quiz) => quiz.id === quizId);
      if (quiz) {
        quiz.answer = answer;
      }
    },
    /**
     * クイズの解説を更新する
     * @param quizId クイズID
     * @param explanation クイズ解説
     */
    updateQuizExplanation(quizId: number, explanation: string | null) {
      const quiz = this.quizzes.find((quiz) => quiz.id === quizId);
      if (quiz) {
        quiz.answer.explanation = explanation;
      }
    },
    /**
     * ジャンルのIDを指定してクイズ一覧を取得する
     * @param genreId ジャンルID
     */
    async fetchQuizzesByGenreId(genreId: number) {
      const nuxtApp = useNuxtApp();
      const httpClient = nuxtApp.$httpClient;

      const resp = await httpClient.get<Quiz[]>(
        `${nuxtApp.$config.public.apiUrl}/quiz/${genreId}`
      );
      this.setQuizzes(resp.data);
    },
    /**
     * クイズの解答を送信する
     * @param request クイズ解答リクエスト
     * @returns クイズ解答
     */
    async postQuizAnswer(request: QuizAnswerRequest): Promise<QuizAnswer> {
      const nuxtApp = useNuxtApp();
      const httpClient = nuxtApp.$httpClient;

      const resp = await httpClient.post<QuizAnswer>(
        `${nuxtApp.$config.public.apiUrl}/quiz/answer`,
        {
          quizId: request.quizId,
          quizChoiceId: request.quizChoiceId,
        }
      );
      // クイズの解答を更新する
      this.updateQuizAnswer(request.quizId, resp.data);

      return resp.data;
    },
    /**
     * クイズの解説を取得する
     * @param quizId クイズID
     * @returns クイズ解説
     */
    async fetchQuizExplanationByQuizId(
      quizId: number
    ): Promise<QuizExplanation> {
      const nuxtApp = useNuxtApp();
      const httpClient = nuxtApp.$httpClient;

      const resp = await httpClient.get<QuizExplanation>(
        `${nuxtApp.$config.public.apiUrl}/quiz/${quizId}/explanation`
      );
      // クイズの解説を更新する
      this.updateQuizExplanation(quizId, resp.data.explanation);

      return resp.data;
    },
  },
});
