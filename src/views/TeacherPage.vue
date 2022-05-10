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
      <div class="flex flex-col py-2 px-4 space-y-2">
        <button class="bg-blue-100 rounded-md px-4 py-1">licence 1</button>
        <button class="bg-pink-100 rounded-md px-4 py-1">licence 2</button>
        <button class="bg-orange-100 rounded-md px-4 py-1">licence 3</button>
      </div>
      <div class="border-l pl-10">
        <router-view></router-view>
      </div>
    </div>
    <div class="w-full pb-20 px-4 pt-4">
      teacher : DR NDJE.
    </div>
  </div>






</template>

<script setup>
import { RouterView } from "vue-router";
</script>
