import { defineStore } from "pinia";
import { Genre } from "~/types/genre";

interface GenreState {
  genres: Genre[];
}

export const useGenreStore = defineStore({
  id: "genre",
  state: () =>
    ({
      genres: [],
    } as GenreState),
  getters: {
    getGenres(state) {
      return state.genres;
    },
  },
  actions: {
    setGenres(genres: Genre[]) {
      this.genres = genres;
    },
    async fetchGenres() {
      const nuxtApp = useNuxtApp();
      const httpClient = nuxtApp.$httpClient;

      const resp = await httpClient.get<Genre[]>(
        `http://localhost:9000/api/v1/genre`
      );
      this.setGenres(resp.data);
    },
  },
});
