<script setup lang="ts">
import { useQuizStore } from "@/stores/quizStore";

const quizStore = useQuizStore();
const router = useRouter();

const quizCount = ref(0);
const correctCount = ref(0);
const showScore = ref(false);
const scoreComment = ref("");

const resetState = () => {
  quizCount.value = 0;
  correctCount.value = 0;
  showScore.value = false;
  scoreComment.value = "";
};

// クイズのリセットを検知する
watch(
  () => quizStore.isReset,
  (newIsReset) => {
    if (newIsReset) {
      resetState();
    }
  }
);

/**
 * クイズの解答をクリアする
 */
const onClear = async () => {
  quizStore.clearQuizAnswers();
  quizStore.setReset(true);
  // 状態の変更がDOMに反映されるのを待つ
  await nextTick();
  quizStore.setReset(false);
};

/**
 * クイズの解答を採点する
 */
const onScoreQuiz = () => {
  const score = quizStore.getQuizResult;
  quizCount.value = score.quizCount;
  correctCount.value = score.correctCount;
  showScore.value = true;

  if (score.correctCount === score.quizCount) {
    scoreComment.value = "全問正解です！！おめでとうございます！！";
  } else {
    scoreComment.value = "全問正解目指して頑張りましょう！！";
  }
};

/**
 * メニューへ戻る
 */
const onBackToMenu = () => {
  router.push("/");
};
</script>

<template>
  <div>
    <p class="mt-4 ml-6 font-bold text-2xl pb-4 text-center">クイズ</p>
    <p class="text-center font-bold text-sm pb-4">
      {{ quizStore.quiz.genre.genreName }}に関するクイズです！！
    </p>
    <div
      v-for="(quiz, index) in quizStore.quiz.quizzes"
      :key="index"
      class="mb-6"
    >
      <QuizCard :quiz="quiz" />
    </div>
    <div
      class="flex sm:flex-row flex-col items-center justify-center gap-4 mt-12 mb-14 px-4 sm:px-0"
    >
      <HelperButtonSecondaryButton
        :attributes="{}"
        class="sm:w-40 w-60"
        :onClick="onClear"
        >最初からやり直す
      </HelperButtonSecondaryButton>

      <HelperButtonPrimaryButton
        :attributes="{}"
        class="sm:w-40 w-60"
        :onClick="onScoreQuiz"
        >採点する
      </HelperButtonPrimaryButton>
    </div>
    <div v-if="showScore">
      <p
        class="flex justify-center my-2 sm:text-base text-sm text-[#8a2be2] font-bold"
      >
        {{ correctCount }} / {{ quizCount }}
      </p>
      <p
        class="flex justify-center my-2 sm:text-base text-sm text-black font-bold"
      >
        {{ scoreComment }}
      </p>
    </div>
    <div
      class="flex sm:flex-row flex-col items-center justify-center gap-4 mt-12 mb-14 px-4 sm:px-0"
    >
      <HelperButtonSecondaryButton
        :attributes="{}"
        class="sm:w-40 w-60"
        :onClick="onBackToMenu"
        >メニューへ戻る
      </HelperButtonSecondaryButton>
    </div>
  </div>
</template>
