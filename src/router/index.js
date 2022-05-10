import { createRouter, createWebHistory } from 'vue-router'
import Login from "../views/Login.vue";

const router = createRouter({
  history: createWebHistory(import.meta.env.BASE_URL),
  routes: [
    {
      component: Login,
      name: "login",
      path: "/",
    },
    {
      component: () => import("../views/TeacherPage.vue"),
      name: "teacher",
      path: "/teacher",
    },
    {
      component: () => import("../views/StudentPage.vue"),
      name: "student",
      path: "/student",
    }
  ]
})

export default router
