<script setup lang="ts">
import { Quiz } from "~~/types/quiz";
import type { Option } from "./Options.vue";
import { useQuizStore } from "@/stores/quizStore";

const quizStore = useQuizStore();

type Props = {
  quiz: Quiz;
};

const { quiz } = defineProps<Props>();

const selectedOption = ref<Option>();

const onClickOption = (option: Option) => {
  showAnswer.value = false;
  showCommentary.value = false;
  selectedOption.value = option;
};

const showAnswer = ref(false);
const showCommentary = ref(false);

const onAnswer = async () => {
  // クイズの解答をするAPIコール
  await quizStore.postQuizAnswer({
    quizId: quiz.id,
    quizChoiceId: selectedOption.value?.id ?? 0,
  });

  showAnswer.value = true;
  showCommentary.value = true;
};

const onReadCommentary = async () => {
  // クイズの解説を取得するAPIコール
  await quizStore.fetchQuizExplanationByQuizId(quiz.id);

  showCommentary.value = true;
};
</script>

<template>
  <section
    class="bg-[#f5f5f5] py-4 sm:py-6 px-2 sm:px-16 max-w-2xl sm:mx-auto mx-2"
  >
    <h2 class="sm:text-base text-sm font-bold mb-4">
      Q{{ quiz.id }} {{ quiz.question }}
    </h2>
    <div class="max-w-[400px] mx-auto">
      <div class="mb-6">
        <QuizOptions
          :options="quiz.options"
          :selectedOption="selectedOption"
          :onClick="onClickOption"
        />
      </div>
      <div
        class="flex sm:flex-row flex-col items-center justify-center gap-4 mb-12"
      >
        <HelperButtonPrimaryButton
          :attributes="{ disabled: !selectedOption }"
          class="sm:w-40 w-60"
          :onClick="onAnswer"
          >解答する</HelperButtonPrimaryButton
        >
        <HelperButtonSecondaryButton
          :attributes="{}"
          class="sm:w-40 w-60"
          :onClick="onReadCommentary"
          >解説を見る</HelperButtonSecondaryButton
        >
      </div>
      <div
        v-if="showAnswer"
        class="flex justify-center my-2 sm:text-base text-sm text-[#8a2be2] font-bold"
      >
        {{ quiz.answer.isCorrect ? "正解" : "不正解" }}
      </div>
      <p
        v-if="showCommentary"
        class="my-2 sm:text-base text-sm font-bold text-center"
      >
        {{ quiz.answer.explanation }}
      </p>
    </div>
  </section>
</template>
