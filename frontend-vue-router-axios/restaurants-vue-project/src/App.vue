<template>
  <div id="app">
    <header class="header">
            <a href="#" class="header__logo">RUEDAS</a>
            <a href="#" class="nav__social-icon"><i class='bx bx-search-alt' id="search-icon"></i></a>
            <a href="#" class="nav__social-icon"><i class='bx bx-cart-alt' id="cart-icon"></i><span class='badge badge-warning shoping-span'></span>
            </a>
            
            <i class='bx bx-menu header__toggle menu-icon' @click="showMenu" id="nav-toggle"
                style='color:#e2d8d8;font-size: 18px;'></i>

            <nav class="nav" ref='navMenu' id="nav-menu">
                <div class="nav__content bd-grid">

                    <i class='nav-close bx bxs-x-circle' @click="closeMenu()" style='color:#f5ecec; text-align: right; font-size: 25px;' id="nav-close"></i>
                    <div class="nav__perfil">
                        <div>
                            <a href="#" class="nav__name">RUEDAS</a>
                            <span class="nav__profesion">App de Entregas</span>
                        </div>
                    </div>
                    <div class="nav__menu">
                        <ul class="nav__list" @click="closeMobileMenu">
                            <li class="nav__item"><router-link to="/restaurantes" active-class="active" id="restaurantes"   class="nav__link restaurantes">Restaurantes</router-link></li>
                            <li class="nav__item">
                                <router-link to="/carrito" id="carrito" active-class="active" class="nav__link">Carrito</router-link>
                            </li>

                            <li class="nav__item">
                                <router-link to="/checkout" id="checkout" active-class="active" class="nav__link">Checkout</router-link>
                            </li>

                           
                            <li class="nav__item"><a href="#"  class="nav__social-icon"><i class='bx bx-log-out' id="log-out-icon"></i></a></li>
                        </ul>
                    </div>
                           
                    <div class="nav__social">
                        <a href="#" class="nav__social-icon"><i class='bx bx-search-alt' id="search-pc-icon"></i></a>
                        <a href="#" class="nav__social-icon"><i class='bx bx-cart-alt' id="cart-pc-icon"></i><span class='badge badge-warning shoping-pc-span' id='lblCartCount'></span></a>
                        
                        <a href="#" class="nav__social-icon"><i class='bx bx-log-out' id="log-out-pc-icon"></i></a>
                    </div>
                </div>
            </nav>
        </header>
         <router-view></router-view>
  </div>
</template>
<script>
export default {
  name: 'app',
  data() {
        //  return {
        //      selected: undefined
        //  }
    },
  methods: {
      /*SHOW MENU*/
        showMenu() {
          this.$refs.navMenu.classList.toggle('show')
        },
        /*HIDDEN*/
        closeMenu() {
            console.log("sdf");
            this.$refs.navMenu.classList.remove('show');
        },
        closeMobileMenu() {
            // close  
            this.$refs.navMenu.classList.remove('show')
        } 
},
}
</script>

