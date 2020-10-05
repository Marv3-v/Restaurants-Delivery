<template>
<div>
<h1 class='title-shop' style='margin-top: 100px; margin-bottom: -50px'>{{ productos.nombre }}</h1>
<h2 class="title-shop" style="font-size: 10px;"><a href="/restaurantes">Volver</a></h2>

  <main class="main art-grid" >
    <article v-for="(producto, index) in productos.productos" :key="index" class='card'>
      <!-- <router-link  :to="{ path: '/restaurantes/'+ restaurante.id + '/menu'}"> -->
      <div class='card__img'><img :src="require(`../assets/img/${producto.imagen_path}`)">
        </div><div class='card__name' @click="addCart"><p>Añadir al Carrito</p></div><div class='card__precis'><div>
        <span class='card__preci card__preci--now'>{{ producto.nombre }}</span></div></div>
      <!-- </router-link> -->
    </article>
  </main>
</div>
</template>
<script>
import ProductosDataService from "../services/ProductosDataService";

export default {
    name: "restaurante-menu-seccion",
  data() {
    return {
      productos: [],
      currentIndex: -1,
      nombre: ""
    };
  },
  methods: {
    getRestaurantID(){
      return window.location.pathname.split('/')[2];
    },
    getMenuID(){
      return window.location.pathname.split('/')[4];
    },
    getProductos() {
      ProductosDataService.getAll(this.getRestaurantID(),this.getMenuID())
        .then(response => {
          this.productos = response.data;
        //    console.log(response.data);
        })
        .catch(e => {
          console.log(e);
        });
    },

    refreshList() {
      this.getProductos();
      this.currentIndex = -1;
    },
    addCart() {
      alert("Agregado");
    }
  },
  mounted() {
    this.getProductos();
  }
};
</script>