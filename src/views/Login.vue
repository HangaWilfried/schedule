<template>
  <div class="fixed overflow-x-hidden overflow-y-auto inset-0 flex md:justify-center items-center z-50 mx-4">
    <div class="absolute mx-auto w-full md:w-auto md:max-w-2xl">
      <form class="bg-[#735d78] rounded-lg rounded shadow-2xl flex flex-col text-white p-8 w-full md:w-96 gap-y-5">
        <Field label="tenant" v-model:field="tenant"/>
        <Field label="Faculty" v-model:field="Faculty"/>
        <Field label="level" v-model:field="level"/>
        <div class="w-full flex flex-col w-full mt-5">
          <button
            @click.prevent="check"
            class="hover:bg-[#f7d1cd] hover:ring-4 active:ring-[#d1b3c4] w-full bg-[#f7d1cd] rounded py-1 text-lg font-sans text-gray-600 ring-2 ring-[#f7d1cd]">connexion</button>
        </div>
      </form>
    </div>
  </div>
  <div class="absolute inset-0 z-40 opacity-25 bg-[#735d78]"></div>
</template>

<script setup>
import { ref } from "vue";

import Field from "../components/Field.vue";

const tenant = ref("");
const Faculty = ref("");
const level = ref("");

const check = () => console.log(tenant.value);
</script>
