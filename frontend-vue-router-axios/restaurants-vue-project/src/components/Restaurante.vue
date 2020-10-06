<template>
<div>
<h1 class='title-shop' style='margin-top: 100px; margin-bottom: -50px'>{{restaurante.nombre}}</h1>
<h2 class="title-shop" style="font-size: 10px;"><span style="cursor: pointer" @click="goTo('restau')">restaurantes</span></h2>
<main class="main art-grid">
    <article v-for="(seccion, index) in restaurante.seccionmenus" :key="index" class='card'>
        <router-link  :to="{ path: '/restaurantes/'+ restaurante.id + '/menu' + '/' + seccion.id}">
        <div class='card__img'><img :src="require(`../assets/img/${seccion.imagen_path}`)">
          </div><div class='card__name'><p>{{ seccion.nombre }}</p></div><div class='card__precis'><div>
          <span class='card__preci card__preci--now'>{{ seccion.nombre }}</span></div></div>
       </router-link>
       </article>
</main>
</div>
</template>
<script>
import RestauranteDataService from "../services/RestauranteDataService";

export default {
  name: "menu-list",
  data() {
    return {
      restaurante: [],
      nombre: ""
    };
  },
  methods: {
    getIDfromURL(){
      return window.location.pathname.split('/')[2];
    },
    getMenu() {
      RestauranteDataService.get(this.getIDfromURL())
        .then(response => {
          this.restaurante = response.data;
          // console.log(response.data);
        })
        .catch(e => {
          console.log(e);
        });
    },
    goTo(page) {
      page === 'restau' ? this.$router.push("/restaurantes") : this.$router.push("/carrito");
    }

  }, 
  mounted() {
    this.getMenu();
  }
}
</script>