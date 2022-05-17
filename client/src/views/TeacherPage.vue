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
      <div class="flex flex-col py-2 px-4 space-y-2 w-36">
        <button class="bg-blue-100 rounded-md px-2 py-1">licence 1</button>
        <button class="bg-pink-100 rounded-md px-2 py-1">licence 2</button>
        <button class="bg-orange-100 rounded-md px-2 py-1">licence 3</button>
      </div>
      <div class="border-l px-10 grid grid-cols-4 w-full gap-8 py-14">
        <div v-for="(data, index) in datas" :key="index" class="p-4 border-t border-gray-100 shadow-md rounded flex flex-col divide-y-2 text-gray-700">
          <div class="flex justify-between">
            <span>{{data.intitule}}</span>
            <span>{{data.jour}}</span>
          </div>
          <div class="flex divide-x-2">
            <span class="p-4">{{`${data.debut} - ${data.fin}`}}</span>
            <span class="p-4">{{`${data.nomEnseignant} - ${data.nomSalle}`}}</span>
          </div>
        </div>
      </div>
    </div>
    <div class="w-full pb-20 px-4 pt-4 space-x-2">
      <span>teacher:</span>
      <span class="text-sm font-medium uppercase">{{store.fillName}}</span>
    </div>
  </div>
</template>

<script setup>
import { useTeacherStore } from "@/store/login";

import axios from "axios";
import { reactive } from "vue";

const datas = reactive([]);
const store = useTeacherStore();

axios.get("http://localhost:5500/teacher").then((resolve) => datas.push(...resolve.data));
</script>
