<template>
  welcome to teacher page

  <div class="w-full h-full inset-0 absolute bg-gray-300 divide-y-2">
    <div>
      <div>
        <span>schedule</span>
        <span>available from 09 may to 15 may 2022</span>
      </div>
      <div>
        <div>
          <button>licence 1</button>
          <button>licence 2</button>
          <button>licence 3</button>
        </div>
        <div>
          <router-view></router-view>
        </div>
      </div>
    </div>
    <div class="absolute bottom-0 w-full">
      teacher: DR NDJE.
    </div>
  </div>
</template>

<script setup>
import { RouterView } from "vue-router";
</script>
