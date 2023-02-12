<template>
  <div class="flex flex-col gap-6 bg-white text-sm">
    <Header />
    <Contents>
      <slot />
    </Contents>
  </div>
</template>

<script setup>
import Contents from "@/components/helper/Contents/Contents.vue";
</script>
