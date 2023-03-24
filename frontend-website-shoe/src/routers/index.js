import {createRouter, createWebHistory} from "vue-router"

const routes = [
  {
    path: "/",
    name: "User",
    meta: {
      layout: 'user'
    },
    component: () => import("../pages/user/Home.vue"),
  },
  {
    path: "/admin",
    name: "Admin",
    meta: {
      layout: 'admin'
    },
    component: () => import("../authentication/Admin.vue"),
  },
  {
    path: "/admin/category",
    name: "CategoryAdmin",
    meta: {
      layout: 'admin'
    },
    component: () => import("../pages/admin/category/Category.vue"),
  },
  {
    path: "/admin/category/register",
    name: "CategoryRegisterAdmin",
    meta: {
      layout: 'admin'
    },
    component: () => import("../pages/admin/category/CategoryForm.vue"),
  },
  {
    path: "/admin/category/edit/:id",
    name: "CategoryEditAdminParam",
    meta: {
      layout: 'admin'
    },
    component: () => import("../pages/admin/category/CategoryForm.vue"),
  },
  {
    path: "/feature",
    name: "Feature",
    meta: {
      layout: 'user'
    },
    component: () => import("../pages/user/Feature.vue"),
  },
  {
    path: "/about",
    name: "AboutPage",
    meta: {
      layout: 'user'
    },
    component: () => import("../pages/user/About.vue"),
  },
  {
    path: "/product",
    name: "Product",
    meta: {
      layout: 'user'
    },
    component: () => import("../pages/user/Product.vue"),
  },
  {
    path: "/contact",
    name: "Contact",
    meta: {
      layout: 'user'
    },
    component: () => import("../pages/user/Contact.vue"),
  },
  {
    path: "/auth/login",
    name: "Login",
    meta: {
      layout: 'auth'
    },
    component: () => import("../pages/auth/Login.vue"),
  },
  {
    path: "/auth/signup",
    name: "Signup",
    meta: {
      layout: 'auth'
    },
    component: () => import("../pages/auth/Signup.vue"),
  },
  {
    path: "/cart",
    name: "Cart",
    meta: {
      layout: 'user'
    },
    component: () => import("../pages/user/Cart.vue"),
  },
  {
    path: "/payment",
    name: "Payment",
    meta: {
      layout: 'user'
    },
    component: () => import("../pages/user/Payment.vue"),
  },
  {
    path: "/product/:id",
    name: "DetailProduct",
    meta: {
      layout: 'user'
    },
    component: () => import("../pages/user/DetailProduct.vue"),
  },
  
]

const router = createRouter({
  history: createWebHistory(),
  routes
})

export default router;
