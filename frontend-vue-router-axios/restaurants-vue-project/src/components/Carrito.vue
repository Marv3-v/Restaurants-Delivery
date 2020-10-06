<template>
<div>
  <h1 class='title-shop' style='margin-top: 100px; margin-bottom: -50px'>Mi Pedido</h1>
  <main class="main art-grid">
        <div class="contenedorFlex">
        
        
        <article style="cursor: default;" class='cardCart'>
            <div class='card__img'>
              <img :src="require(`../assets/img/americana.png`)">
            </div>
            <div class='card__precis'>
              <i class='bx bxs-x-circle'></i>
                          <div>
                              <span class="card__preci card__preci--before">Hamburgesa</span>
                              <span class="card__preci card__preci--now" style="color:  #F7567C">Q.40.00</span>
                          </div>
            <div class="cant__content">
              <span style="cursor: pointer">-</span>
              <span>1</span>
              <span style="cursor: pointer">+</span>
            </div>
            </div>     
        </article>
        <article style="cursor: default;" class='cardCart'>
            <div class='card__img'>
              <img :src="require(`../assets/img/americana.png`)">
            </div>
            <div class='card__precis'>
              <i class='bx bxs-x-circle'></i>
                          <div>
                              <span class="card__preci card__preci--before">Hamburgesa</span>
                              <span class="card__preci card__preci--now" style="color:  #F7567C">Q.40.00</span>
                          </div>
            <div class="cant__content">
              <span style="cursor: pointer">-</span>
              <span>1</span>
              <span style="cursor: pointer">+</span>
            </div>
            </div>     
        </article>
        <article style="cursor: default;" class='cardCart'>
            <div class='card__img'>
              <img :src="require(`../assets/img/americana.png`)">
            </div>
            <div class='card__precis'>
              <i class='bx bxs-x-circle'></i>
                          <div>
                              <span class="card__preci card__preci--before">Hamburgesa</span>
                              <span class="card__preci card__preci--now" style="color:  #F7567C">Q.40.00</span>
                          </div>
            <div class="cant__content">
              <span style="cursor: pointer">-</span>
              <span>1</span>
              <span style="cursor: pointer">+</span>
            </div>
            </div>     
        </article>
        <article style="cursor: default;" class='cardCart'>
            <div class='card__img'>
              <img :src="require(`../assets/img/americana.png`)">
            </div>
            <div class='card__precis'>
              <i class='bx bxs-x-circle'></i>
                          <div>
                              <span class="card__preci card__preci--before">Hamburgesa</span>
                              <span class="card__preci card__preci--now" style="color:  #F7567C">Q.40.00</span>
                          </div>
            <div class="cant__content">
              <span style="cursor: pointer">-</span>
              <span>1</span>
              <span style="cursor: pointer">+</span>
            </div>
            </div>     
        </article>
        </div>
          <article style="cursor: default;" class='cardCart'>
            <div class='card__precis'>
              <span style="font-size: 10px">+Envío Q.8.00</span>
                          <div>
                              <span class="card__preci card__preci--before">Total</span>
                              <span class="card__preci card__preci--now" style="color:  #F7567C">Q.40.00</span>
                          </div>
            <div class="comprar">
           <span>Comprar</span>
            </div>
            </div>     
        </article>
        
  </main>
</div>
</template>
