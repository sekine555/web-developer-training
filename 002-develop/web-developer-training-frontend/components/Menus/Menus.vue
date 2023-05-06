<script setup lang="ts">
import Icon from "@/components/helper/Icon/Icon.vue";
import { useGenreStore } from "@/stores/genreStore";

const genreStore = useGenreStore();
</script>

<template>
  <div>
    <p class="mt-4 ml-6 font-bold text-2xl pb-6 sm:pb-14">ジャンル</p>
    <nav>
      <ul
        class="flex items-center justify-center gap-4 flex-wrap sm:flex-nowrap"
      >
        <li v-for="(menu, index) in genreStore.genres" :key="index">
          <nuxt-link :to="`/quiz/${menu.id}`">
            <Icon :name="menu.genreName" :path="getImagePath(menu.genreCode)" />
          </nuxt-link>
        </li>
      </ul>
    </nav>
  </div>
</template>
