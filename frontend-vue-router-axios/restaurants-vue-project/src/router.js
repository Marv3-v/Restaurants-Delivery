import Vue from "vue";
import Router from "vue-router";
import RestaurantesComp from "./components/Restaurantes";
import RestauranteComp from "./components/Restaurante";
import ProductosComp from "./components/Productos";
import CarritoComp from "./components/Carrito";
import CheckoutComp from "./components/Checkout";
import LoginComp from "./components/Login";
import SignupComp from "./components/Signup";
Vue.use(Router);

export const router = new Router({
  mode: "history",
  routes: [
    {
      path: "/",
      alias: "/login",
      name: "login",
      component: LoginComp,
    },
    {
      path: "/signup",
      alias: "/signup",
      name: "signup",
      component: SignupComp
    },
    {
      path: "/restaurantes",
      alias: "/restaurantes",
      name: "restaurantes",
      component: RestaurantesComp,
    },
    {
      path: "/restaurantes/:id/menu",
      name: "restaurante-menu",
      component: RestauranteComp,
    },
    {
      path: "/restaurantes/:id/menu/:id",
      name: "restaurante-menu-seccion",
      component: ProductosComp,
    },
    {
      path: "/carrito",
      name: "carrito",
      component: CarritoComp,
    },
    {
      path: "/checkout",
      name: "/checkout",
      component: CheckoutComp,

    }],
}
);
router.beforeEach((to, from, next) => {
  const publicPages = ["/", "/signup"];
  const authRequired = !publicPages.includes(to.path);
  const loggedIn = localStorage.getItem("user");

  // trying to access a restricted page + not logged in
  // redirect to login page
  if (authRequired && !loggedIn) {
    next("/login");
  } else {
    next();
  }
});




