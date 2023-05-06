<script setup lang="ts">
export type Option = {
  id: number;
  optionNumber: number;
  option: string;
};

type Props = {
  options: Option[];
  selectedOption?: Option;
  onClick: (option: Option) => void;
};

const { options, selectedOption, onClick } = defineProps<Props>();
</script>

<template>
  <div class="flex items-center justify-center">
    <ol role="listbox" class="w-full">
      <li
        v-for="(option, index) in options"
        :key="index"
        role="option"
        v-bind:aria-selected="option.id === selectedOption?.id"
        v-on:click="() => onClick(option)"
        class="bg-[#f7f9f2] mb-2 p-2 sm:text-base text-sm font-bold flex items-center aria-selected:bg-[#dddfd8] transition cursor-pointer"
      >
        <span class="mr-4">{{ option.optionNumber }}</span
        ><span>{{ option.option }}</span>
      </li>
    </ol>
  </div>
</template>
