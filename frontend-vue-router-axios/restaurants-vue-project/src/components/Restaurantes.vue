<template>
<div>
<h1 class='title-shop' style='margin-top: 100px; margin-bottom: -50px'>Restaurantes</h1>

  <main class="main art-grid" >
    
    <article v-for="(restaurante, index) in restaurantes" :key="index" class='card'>
      <!-- <a v-bind:href="'/restaurantes/' + restaurante.id + '/menu'"> -->
      <router-link  :to="{ path: '/restaurantes/'+ restaurante.id + '/menu'}">
      <div class='card__img'><img :src="require(`../assets/img/${restaurante.imagen_path}`)">
    <!-- :src="require(`@/${restaurante.imagen_path}.png`)" -->
        </div><div class='card__name'><p>{{ restaurante.nombre }}</p></div><div class='card__precis'><div>
        <span class='card__preci card__preci--now'>{{ restaurante.nombre }}</span></div></div>
      </router-link>
        <!-- </a>   -->
    </article>
  </main>
</div>
</template>
<script>
import RestaurantesDataService from "../services/RestaurantesDataService";

export default {
  name: "restaurantes-list",
  data() {
    return {
      restaurantes: [],
      nombre: "",
      currentIndex: -1,
    };
  },
  methods: {
    getRestaurantes() {
      RestaurantesDataService.getAll()
        .then(response => {
          this.restaurantes = response.data;
          // console.log(response.data);
        })
        .catch(e => {
          console.log(e);
        });
    },


  },
  mounted() {
    this.getRestaurantes();
  }
};
</script>