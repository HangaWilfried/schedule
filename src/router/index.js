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
      component: () => import("../views/Dashboard.vue"),
      name: "dashboard",
      path: "/dashboard",
    }
  ]
})

export default router
