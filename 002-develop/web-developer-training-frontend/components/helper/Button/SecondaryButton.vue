<script setup lang="ts">
import { ButtonHTMLAttributes } from "vue";

const { onClick, attributes } = defineProps<{
  attributes: ButtonHTMLAttributes;
  onClick?: () => void;
}>();
</script>

<template>
  <button
    v-bind="attributes"
    :on-click="onClick"
    class="items-center w-full h-[45px] text-center rounded text-primary border-primary border-4 bg-white hover:opacity-70 disabled:opacity-30"
  >
    <slot />
  </button>
</template>
