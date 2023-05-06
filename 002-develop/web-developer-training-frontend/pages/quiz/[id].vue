<script setup lang="ts">
import { useQuizStore } from "@/stores/quizStore";

const quizStore = useQuizStore();
const route = useRoute();
const { id } = route.params;

useAsyncData(async () => {
  if (isNaN(Number(id))) {
    throw new Error("Invalid ID provided. ID must be a number.");
  }
  await quizStore.fetchQuizzesByGenreId(Number(id));
});
</script>

<template>
  <Quiz />
</template>
