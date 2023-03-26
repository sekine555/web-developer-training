<script setup lang="ts">

const {name,path} = defineProps<{
  path: string
  name: string
}>()

</script>

<template>
  <div class="flex items-center justify-center flex-col gap-2 p-4 w-[140px] h-[100px]">
    <nuxt-img :src="path" :alt="name" width="48px" height="48px"/>
    <span class="text-sm">{{ name }}</span>
  </div>
</template>
