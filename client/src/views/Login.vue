<template>
  <div class="fixed overflow-x-hidden overflow-y-auto inset-0 flex md:justify-center items-center z-50 mx-4">
    <div class="absolute mx-auto w-full md:w-auto md:max-w-2xl">
      <form class="bg-[#735d78] rounded-lg rounded shadow-2xl flex flex-col text-white p-8 w-full md:w-96 gap-y-5" @submit.prevent="loginTo">
        <div class="text-gray-900 cursor-pointer bg-white rounded">
          <div class="flex justify-between rounded bg-white space-x-4 items-center pl-2" @click="handleClose">
            <span>tenant</span>
            <div class="bg-[#735d78] w-full flex justify-between pl-5 pr-2 py-2 text-white">
              <span class="uppercase font-medium text-sm">{{tenant}}</span>
              <ChevronDownIcon class="w-5 inline delay-100 ease-in-out"
                :class="{
                'rotate-180': shouldCloseTenantOptions,
                'rotate-0': !shouldCloseTenantOptions
                }"
              />
            </div>
          </div>
          <div class="flex flex-col items-start rounded shadow-xl" v-if="!shouldCloseTenantOptions" @click="shouldCloseTenantOptions = true">
            <span class="hover:bg-gray-200 w-full p-2 rounded" @click="setTenant('student')">student</span>
            <span class="hover:bg-gray-200 w-full p-2 rounded" @click="setTenant('teacher')">teacher</span>
          </div>
        </div>
        <template v-if="tenant === 'student'">
          <Field label="Faculty" v-model:field="student.faculty" model="text"/>
          <Field label="level" v-model:field="student.level" model="text"/>
        </template>
        <template v-else>
          <Field label="full name" v-model:field="teacher.fullName" model="text"/>
          <Field label="registration number" v-model:field="teacher.registrationNumber" model="text"/>
        </template>
        <div class="w-full flex flex-col w-full mt-5">
          <button
            @click.prevent="loginTo"
            :disabled="v$.$invalid"
            class="hover:bg-[#f7d1cd] hover:ring-4 active:ring-[#d1b3c4] w-full bg-[#f7d1cd] rounded py-1 text-lg font-sans text-gray-600 ring-2 ring-[#f7d1cd]">connexion</button>
        </div>
      </form>
    </div>
  </div>
  <div class="absolute inset-0 z-40 opacity-25 bg-[#735d78]"></div>
</template>

<script setup>
import { computed, reactive, ref } from "vue";
import { useRouter } from "vue-router";
import { useVuelidate } from "@vuelidate/core";
import { required, helpers } from "@vuelidate/validators";

import { useStudentStore, useTeacherStore } from "@/store/login";

import Field from "../components/Field.vue";
import { ChevronDownIcon } from '@heroicons/vue/solid';
 import axios from "axios";


const studentStore = useStudentStore();
const teacherStore = useTeacherStore();

const student = reactive({
  faculty: "",
  level: "",
});
const teacher = reactive({
  fullName: "",
  registrationNumber: ""
});

const teacherRules = {
  fullName: {
    required: helpers.withMessage("veuillez fournir votre nom complet", required),
  },
  registrationNumber: {
    required: helpers.withMessage("veuillez fournir votre matricule", required),
  }
}

const studentRules = {
  faculty: {
    required: helpers.withMessage("veuillez fournir la filiere", required),
  },
  level: {
    required: helpers.withMessage("veuillez fournir le niveau", required),
  }
};

const tenant = ref("student");
const computedState = computed(() => tenant.value === "student" ? student : teacher);
const computedRule = computed(() => tenant.value === "student" ? studentRules : teacherRules);

const v$ = useVuelidate(computedRule, computedState);

const router = useRouter();

const loginTo = async () => {
  if(tenant.value === 'student') {
    studentStore.setData(student.level, student.faculty);
    await axios.post(`http://localhost:5000/student?faculty=${studentStore.fillFaculty}&level=${studentStore.fillLevel}`);
    router.push("/student");
  }
  else {
    teacherStore.setData(teacher.fullName, teacher.registrationNumber);
    await axios.post(`http://localhost:5000/teacher?fullName=${teacherStore.fillName}&registrationNumber=${teacherStore.fillRegister}`);
    router.push("/teacher");
  }
}
const shouldCloseTenantOptions = ref(true);

const handleClose = () => {
  return shouldCloseTenantOptions.value = shouldCloseTenantOptions.value === false
}
const setTenant = (value) => {
  tenant.value = value;
};
</script>

<style scoped>
  button:disabled {
    @apply w-full bg-gray-300 rounded py-1 text-lg font-sans text-gray-600 ring-2 ring-gray-300 cursor-text;
  }
</style>
