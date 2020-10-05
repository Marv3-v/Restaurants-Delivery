import Vue from "vue";
import Router from "vue-router";
import RestaurantesComp from "./components/Restaurantes";
import RestauranteComp from "./components/Restaurante";
import ProductosComp from "./components/Productos";
import LogInComp from "./components/LogIn";
Vue.use(Router);

export default new Router({
  mode: "history",
  routes: [
    {
      path: "/",
      alias: "/",
      name: "login",
      component: LogInComp,
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
    
  ],
});
