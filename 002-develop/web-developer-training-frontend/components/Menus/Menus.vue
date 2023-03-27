<script setup lang="ts">
const menus = [
  { name: "フロントエンド", imagePath: "/images/menus/frontend.svg" },
  { name: "バックエンド", imagePath: "/images/menus/backend.svg" },
  { name: "インフラ", imagePath: "/images/menus/infrastructure.svg" },
  { name: "データベース", imagePath: "/images/menus/database.svg" },
];
</script>

<template>
  <nav>
    <ul class="flex items-center justify-center gap-4 flex-wrap sm:flex-nowrap">
      <li v-for="(menu, index) in menus" :key="index">
        <a>
          <Icon :name="menu.name" :path="menu.imagePath" />
        </a>
      </li>
    </ul>
  </nav>
</template>
