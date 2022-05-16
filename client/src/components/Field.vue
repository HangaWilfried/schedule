<template>
  <div class="flex flex-col items-start gap-y-1">
    <label for="">{{label}}</label>
    <input :type="model"
      :value="field"
      @input="$emit('update:field', $event.target.value)"
      class="text-xs h-10 rounded w-full outline-none px-4 focus:border-2 focus:ring-0 text-gray-700"
    >
  </div>
</template>

<script setup>
import { defineProps } from "vue";

defineProps({
  label: {
    type: String,
    required: true
  },
  field: {
    type: String,
    required: true
  },
  model: {
    type: String,
    required: true
  }
})
</script>
