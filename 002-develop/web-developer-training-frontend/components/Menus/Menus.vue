<script setup lang="ts">
import Icon from "@/components/helper/Icon/Icon.vue";

const menus = [
  { name: "フロントエンド", imagePath: "/images/menus/frontend.svg" },
  { name: "バックエンド", imagePath: "/images/menus/backend.svg" },
  { name: "インフラ", imagePath: "/images/menus/infrastructure.svg" },
  { name: "データベース", imagePath: "/images/menus/database.svg" },
];
</script>

<template>
  <div>
    <p class="mt-4 ml-6 font-bold text-2xl pb-6 sm:pb-14">ジャンル</p>
    <nav>
      <ul
        class="flex items-center justify-center gap-4 flex-wrap sm:flex-nowrap"
      >
        <li v-for="(menu, index) in menus" :key="index">
          <a>
            <Icon :name="menu.name" :path="menu.imagePath" />
          </a>
        </li>
      </ul>
    </nav>
  </div>
</template>
