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
    class="items-center w-full h-[45px] text-center rounded text-white bg-primary hover:opacity-90 disabled:opacity-30"
  >
    <slot />
  </button>
</template>
