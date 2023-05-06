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
  },
  actions: {
    setQuizzes(quizzes: Quiz[]) {
      this.quizzes = quizzes;
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
     * クイズの回答を送信する
     * @param request クイズ回答リクエスト
     * @returns クイズ回答
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
      console.log("resp:", resp.data);
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
      console.log("resp:", resp.data);
      return resp.data;
    },
  },
});
