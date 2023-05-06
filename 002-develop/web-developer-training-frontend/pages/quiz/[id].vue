<script setup lang="ts">
import { useQuizStore } from "@/stores/quizStore";

const quizStore = useQuizStore();
const route = useRoute();
const { id } = route.params;

const isLoading = ref(false);

useAsyncData(async () => {
  try {
    isLoading.value = true;
    if (isNaN(Number(id))) {
      throw new Error("Invalid ID provided. ID must be a number.");
    }
    await quizStore.fetchQuizByGenreId(Number(id));
  } finally {
    isLoading.value = false;
  }
});
</script>

<template>
  <div v-if="isLoading" class="flex justify-center items-center h-screen">
    <HelperLoading />
  </div>
  <div v-else>
    <Quiz />
  </div>
</template>
