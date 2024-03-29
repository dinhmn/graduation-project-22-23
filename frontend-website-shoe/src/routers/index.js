import {createRouter, createWebHistory} from "vue-router"

const routes = [
  // Router user
  {
    path: "/",
    name: "User",
    meta: {
      layout: 'user',
      auth: false
    },
    component: () => import("../pages/user/Home.vue"),
  },
  {
    path: "/about",
    name: "AboutPage",
    meta: {
      layout: 'user',
      auth: false
    },
    component: () => import("../pages/user/About.vue"),
  },
  {
    path: "/product",
    name: "Product",
    meta: {
      layout: 'user',
      auth: false
    },
    component: () => import("../pages/user/Product.vue"),
  },
  {
    path: "/contact",
    name: "Contact",
    meta: {
      layout: 'user',
      auth: false
    },
    component: () => import("../pages/user/Contact.vue"),
  },
  {
    path: "/article/:articleId",
    name: "Article",
    meta: {
      layout: 'user',
      auth: false
    },
    component: () => import("../pages/user/Article.vue"),
  },
  {
    path: "/payment",
    name: "Payment",
    meta: {
      layout: 'user',
      auth: false
    },
    component: () => import("../pages/user/Payment.vue"),
  },
  {
    path: "/product/:categoryId/:productId",
    name: "DetailProduct",
    meta: {
      layout: 'user',
      auth: false
    },
    component: () => import("../pages/user/DetailProduct.vue"),
  },

  // Router Admin
  {
    path: "/admin",
    name: "Admin",
    meta: {
      layout: 'admin',
      auth: true
    },
    component: () => import("../pages/admin/Dashboard.vue"),
  },
  {
    path: "/admin/category",
    name: "CategoryAdmin",
    meta: {
      layout: 'admin',
      auth: true
    },
    component: () => import("../pages/admin/admin-page/Category.vue"),
  },
  {
    path: "/admin/category/register",
    name: "CategoryRegisterAdmin",
    meta: {
      layout: 'admin',
      auth: true
    },
    component: () => import("../pages/admin/admin-form/CategoryForm.vue"),
  },
  {
    path: "/admin/category/edit/:trademarkId/:categoryId",
    name: "CategoryEditAdminParam",
    meta: {
      layout: 'admin',
      auth: true
    },
    component: () => import("../pages/admin/admin-form/CategoryForm.vue"),
  },
  {
    path: "/admin/product",
    name: "ProductAdmin",
    meta: {
      layout: 'admin',
      auth: true
    },
    component: () => import("../pages/admin/admin-page/Product.vue"),
  },
  {
    path: "/admin/product/register",
    name: "ProductRegisterAdmin",
    meta: {
      layout: 'admin',
      auth: true
    },
    component: () => import("../pages/admin/admin-form/ProductForm.vue"),
  },
  {
    path: "/admin/product/edit/:categoryId/:productId",
    name: "ProductEditAdmin",
    meta: {
      layout: 'admin',
      auth: true
    },
    component: () => import("../pages/admin/admin-form/ProductForm.vue"),
  },
  {
    name: "ContactAdmin",
    path: "/admin/contact",
    meta: {
      layout: 'admin',
      auth: true
    },
    component: () => import("../pages/admin/admin-page/Contact.vue")
  },
  {
    name: "ArticleAdmin",
    path: "/admin/article",
    meta: {
      layout: 'admin',
      auth: true
    },
    component: () => import("../pages/admin/admin-page/Article.vue")
  },
  {
    name: "ArticleRegisterAdmin",
    path: "/admin/article/register",
    meta: {
      layout: 'admin',
      auth: true
    },
    component: () => import("../pages/admin/admin-form/ArticleForm.vue")
  },
  {
    name: "ArticleUpdateAdmin",
    path: "/admin/article/update/:articleId",
    meta: {
      layout: 'admin',
      auth: true
    },
    component: () => import("../pages/admin/admin-form/ArticleForm.vue")
  },
  {
    name: "CartAdmin",
    path: "/admin/cart",
    meta: {
      layout: 'admin',
      auth: true
    },
    component: () => import("../pages/admin/admin-page/Cart.vue")
  },
  {
    name: "OrderAdmin",
    path: "/admin/order",
    meta: {
      layout: 'admin',
      auth: true
    },
    component: () => import("../pages/admin/admin-page/Order.vue")
  },
  {
    name: "OrderDetail",
    path: "/admin/order/detail/:orderId",
    meta: {
      layout: 'admin',
      auth: true
    },
    component: () => import("../pages/admin/admin-form/Pdf.vue")
  },
  {
    name: "UserAdmin",
    path: "/admin/user",
    meta: {
      layout: 'admin',
      auth: true
    },
    component: () => import("../pages/admin/admin-page/User.vue")
  },
  {
    name: "UserUpdateAdmin",
    path: "/admin/user/detail/:id",
    meta: {
      layout: 'admin',
      auth: true
    },
    component: () => import("../pages/admin/admin-form/UserForm.vue")
  },
  {
    name: "RoleAdmin",
    path: "/admin/role",
    meta: {
      layout: 'admin',
      auth: true
    },
    component: () => import("../pages/admin/admin-page/Role.vue")
  },
  {
    name: "RoleRegisterAdmin",
    path: "/admin/role/register",
    meta: {
      layout: 'admin',
      auth: true
    },
    component: () => import("../pages/admin/admin-form/RoleForm.vue")
  },

  // Router Login
  {
    path: "/auth/login",
    name: "Login",
    meta: {
      layout: 'auth',
      auth: false
    },
    component: () => import("../pages/auth/Login.vue"),
  },
  {
    path: "/auth/signup",
    name: "Signup",
    meta: {
      layout: 'auth',
      auth: false
    },
    component: () => import("../pages/auth/Signup.vue"),
  },

  // Router 404
  {
    path: '/:pathMatch(.*)*',
    name: "404",
    meta: {
      layout: '404',
      auth: false
    },
    component: () => import("../pages/auth/404-page.vue")
  }
]

const router = createRouter({
  history: createWebHistory(),
  routes
})

router.beforeEach((to, from, next) => {
  // const publicPages = ['/auth/login', '/auth/signup', '/'];
  // const authRequired = !publicPages.includes(to.path);
  const loggedIn = localStorage.getItem('user');
  const validate = JSON.parse(loggedIn);

  if (to.meta.auth) {
    if (loggedIn) {
      if (validate.roles.includes('ADMIN')) {
        next()
      } else {
        console.log("error");
        next({name: "404"})
      }
    } else {
      next("/auth/login")
    }
  } else {
    next();
  }
});

export default router;
