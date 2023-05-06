<script setup lang="ts">
import { useQuizStore } from "@/stores/quizStore";
import { useGenreStore } from "@/stores/genreStore";

const quizStore = useQuizStore();
const route = useRoute();
const { id } = route.params;

const genreStore = useGenreStore();

const loading = ref(true);

watchEffect(async () => {
  try {
    if (isNaN(Number(id))) {
      throw new Error("Invalid ID provided. ID must be a number.");
    }
    await quizStore.fetchQuizzesByGenreId(Number(id));
    genreStore.setSelectedGenreId(Number(id));

    if (!genreStore.genres.length) {
      await genreStore.fetchGenres();
    }
  } catch (error) {
    console.error("An error occurred while fetching data:", error);
  } finally {
    loading.value = false;
  }
});
</script>

<template>
  <Quiz :loading="loading" />
</template>
