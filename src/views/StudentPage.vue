<template>
  <div class="flex flex-col items-start w-full">
    <div class="flex justify-between w-full shadow-md p-4">
      <span class="text-xl text-gray-900 font-extrabold font-sans">schedule</span>
      <div class="flex space-x-4 items-center text-xs">
        <span class="bg-blue-100 rounded-md px-4 py-1">licence 3</span>
        <span class="font-medium">available from 09 may to 15 may 2022</span>
      </div>
    </div>
    <div class="w-full flex border">
      <div class="border-l px-10 grid grid-cols-4 w-full gap-8 py-14">
        <Lesson v-for="item in 12" :key="item" />
        <router-view></router-view>
      </div>
    </div>
    <div class="w-full pb-20 px-4 pt-4 space-x-2">
      <span>filiere:</span>
      <span class="text-sm font-medium uppercase">informatic</span>
    </div>
  </div>
</template>
<script setup>
import Lesson from "../components/Lesson.vue"
</script>
