<script setup lang="ts">

const quizzes = [{
  order: 1,
  question: 'リクエストがあったらサーバーサイドでHTML/CSS/JSを生成して返却するレンダリングはどれでしょうか',
  options: [
    {
      value: 1,
      label: 'CSR（クライアントサイドレンダリング）'
    },
    {
      value: 2,
      label: 'SSR（サーバーサイドレンダリング）'
    },
    {
      value: 3,
      label: 'SG（スタティックジェネレーション）'
    },
    {
      value: 4,
      label: 'ISR'
    },
  ],
  answer: 2,
  commentary: '解説文が入ります解説文が入ります解説文が入ります解説文が入ります解説文が入ります解説文が入ります解説文が入ります解説文が入ります解説文が入ります解説文が入ります'
},
{
  order: 2,
  question: 'リクエストがあったらサーバーサイドでHTML/CSS/JSを生成して返却するレンダリングはどれでしょうか',
  options: [
    {
      value: 1,
      label: 'CSR（クライアントサイドレンダリング）'
      },
    {
      value: 2,
      label: 'SSR（サーバーサイドレンダリング）'
    },
    {
      value: 3,
      label: 'SG（スタティックジェネレーション）'
    },
    {
      value: 4,
      label: 'ISR'
    },
  ],
  answer: 4,
  commentary: '解説文が入ります解説文が入ります解説文が入ります解説文が入ります解説文が入ります解説文が入ります解説文が入ります解説文が入ります解説文が入ります解説文が入ります'
}]
</script>

<template>
  <Menus />
  <div v-for="(quiz, index) in quizzes" :key="index" class="mb-6">
    <QuizCard :order="quiz.order" :question="quiz.question" :options="quiz.options" :answer="quiz.answer" :commentary="quiz.commentary" />
  </div>
</template>
