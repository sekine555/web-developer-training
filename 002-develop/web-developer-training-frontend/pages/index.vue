<script setup lang="ts">
import { useGenreStore } from "@/stores/genreStore";

const genreStore = useGenreStore();

useAsyncData(async () => {
  await genreStore.fetchGenres();
});
</script>

<template>
  <Menus />
</template>
