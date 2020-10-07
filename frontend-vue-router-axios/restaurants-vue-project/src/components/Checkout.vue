<template>
<div>
  <h1 class='title-shop' style='margin-top: 100px; margin-bottom: -50px'>Ordenar</h1>
  <main class="main art-grid">
        <div class="contenedorFlex">
            <article style="cursor: default;" v-for="(prod, index) in carrito" :key="index"  class='cardCart'>
                <div class='card__img'>
                <img :src="require(`../assets/img/americana.png`)">
                </div>
                <div class='card__precis'>
                            <div>
                                <span class="card__preci card__preci--before">{{ prod.nombre }}</span>
                                <span class="card__preci card__preci--now" style="color:  #F7567C">Q.{{prod.precio}}</span>
                            </div>
                {{ prod.cantidad }}
                </div>     
            </article>
        </div>
        <div class="article" v-if="carrito.length <= 0">
          <article style="cursor: default; background:  #E6E7E9; color: #5D576B" class='cardTotal'>
            <div class='card__precis'>
                          <div>
                              <span class="card__preci card__preci--before">PAGO</span>
                              <span class="card__preci card__preci--now" style="color:  #F7567C">No disponible</span>
                          </div>
            <div class="comprar" @click="goTo">
           <span>Restaurantes</span>
            </div>
            </div>     
          </article>
        </div>
        <div v-else class="checkout">
            <article style="cursor: default; background:  #E6E7E9; color: #5D576B" class='cardTotal'>
                CLIENTE:
                <p>Cesar Lopez</p>
          </article>
         
        </div>
        
  </main>
</div>
</template>
<script>
export default {
 data() {
   return {
     carrito: [],
     currentItem: null,
     total: null
   }
 },
 methods: {
   getCart() {
     this.carrito = this.$store.getters.getCartProducts;
   },
  addOneMore(producto) {
      this.currentItem = { id: producto.id, nombre: producto.nombre, precio: producto.precio, image: producto.imagen_path};
      // console.log(this.currentProd);
      //Llamamos a la mutacion que incrementara el dato del carrito
      this.$store.dispatch("addToCart", this.currentItem);
      this.getTotal();
    },
  removeByOne(producto) {
      this.currentItem = { id: producto.id};
      this.$store.dispatch("deleteFromCart", this.currentItem);
      this.getTotal();
  },
  removeCompletely(producto) {
    this.currentItem = { id: producto.id}
    this.$store.dispatch("deleteCompletely", this.currentItem);
    this.getTotal();
  },
  goTo() {
    this.$router.push("/restaurantes");
  },
  getTotal() {
    let localT = 0;
      this.$store.getters.getCartProducts.map(el => {
        localT += parseFloat(el["cantidad"]) * parseFloat(el["precio"]);
      }
      );
      this.total = parseFloat(8) +localT;
      // console.log(this.total);
  }
 }, 
 mounted() {
   this.getCart();
   this.getTotal();
 },
  
 
}
</script>
