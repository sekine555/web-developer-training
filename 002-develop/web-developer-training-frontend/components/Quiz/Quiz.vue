<script setup lang="ts">
import { useQuizStore } from "@/stores/quizStore";

const quizStore = useQuizStore();
</script>

<template>
  <div v-for="(quiz, index) in quizStore.quizzes" :key="index" class="mb-6">
    <QuizCard :quiz="quiz" />
  </div>
</template>
