<template>
<div>
<h1 class='title-shop' style='margin-top: 100px; margin-bottom: -50px'>{{ productos.nombre }}</h1>
<h2 class="title-shop" style="font-size: 10px;"><a href="/restaurantes">Volver</a></h2>

  <main class="main art-grid">
    <article style="cursor: default" v-for="(producto, index) in productos.productos" :key="index" class='card'>
      <!-- <router-link  :to="{ path: '/restaurantes/'+ restaurante.id + '/menu'}"> -->
      <div class='card__img' ><img :src="require(`../assets/img/${producto.imagen_path}`)">
        </div><div class='card__name'>
          <p>{{ producto.nombre }}</p>
        </div>
        <div class='card__precis'>
                    <div>
                        <span class="card__preci card__preci--before">{{ producto.nombre }}</span>
                        <span class="card__preci card__preci--now" style="color:  #F7567C">Q.{{ producto.precio }}</span>
                    </div>
                    
            <span style="cursor:pointer" class="card__icon" @click="addCart(producto)"><i class='bx bx-cart-alt' style="color: #5D576B;"></i></span>
        </div>
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
      prod: null,
      currentProd: null,
      number: null,
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
     
    },
    updateTotal() {

    },
    updateProducto() {
      // Aqui sumare/Restaré cantidades. O eliminaré el objeto.
    }

  },
  mounted() {
    this.getProductos();
  }
};
</script>