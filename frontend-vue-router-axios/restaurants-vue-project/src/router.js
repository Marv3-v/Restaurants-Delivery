import Vue from "vue";
import Router from "vue-router";
import RestaurantesComp from "./components/Restaurantes";
import RestauranteComp from "./components/Restaurante";
import ProductosComp from "./components/Productos";
import CarritoComp from "./components/Carrito";
import CheckoutComp from "./components/Checkout";
import LoginComp from "./components/Login";
Vue.use(Router);

export default new Router({
  mode: "history",
  routes: [
    {
      path: "/",
      alias: "/login",
      name: "login",
      component: LoginComp,
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

    }
    
  ],
});
