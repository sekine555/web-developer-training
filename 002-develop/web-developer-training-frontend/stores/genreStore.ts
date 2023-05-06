import { defineStore } from "pinia";
import { Genre } from "~/types/genre";

interface GenreState {
  genres: Genre[];
  selectedGenreId: number;
}

export const useGenreStore = defineStore({
  id: "genre",
  state: () =>
    ({
      genres: [],
      selectedGenreId: -1,
    } as GenreState),
  getters: {
    getGenres(state) {
      return state.genres;
    },
    // 選択中のジャンルを取得する
    getSelectedGenre(state) {
      return state.genres.find((genre) => {
        return genre.id === state.selectedGenreId;
      });
    },
  },
  actions: {
    setGenres(genres: Genre[]) {
      this.genres = genres;
    },
    setSelectedGenreId(genreId: number) {
      this.selectedGenreId = genreId;
    },
    /**
     * ジャンル一覧を取得する
     */
    async fetchGenres() {
      const nuxtApp = useNuxtApp();
      const httpClient = nuxtApp.$httpClient;

      const resp = await httpClient.get<Genre[]>(
        `${nuxtApp.$config.public.apiUrl}/genre`
      );
      this.setGenres(resp.data);
    },
  },
});
