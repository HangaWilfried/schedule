<template>
  <div class="p-4 border-t border-gray-100 shadow-md rounded flex flex-col divide-y-2 text-gray-700">
    <div class="flex justify-between">
      <span>{{data.intitule}}</span>
      <span>{{data.jour}}</span>
    </div>
    <div class="flex divide-x-2">
      <span class="p-4">{{`${data.debut} - ${data.fin}`}}</span>
      <span class="p-4">{{`${data.nomEnseignant} - ${data.nomSalle}`}}</span>
    </div>
  </div>
</template>

<script setup>
defineProps({
  data:  Array
})
</script>