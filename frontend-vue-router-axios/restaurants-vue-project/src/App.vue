<template>
  <div id="app">
    <header class="header">
            <a href="#" class="header__logo">RUEDAS</a>
            <a href="#" class="nav__social-icon"><i class='bx bx-search-alt' id="search-icon"></i></a>
            <a href="#" class="nav__social-icon"><i class='bx bx-cart-alt' id="cart-icon"></i></a>
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
                        <ul class="nav__list">
                            <li class="nav__item"><a href="#" id="restaurantes"  @click="linkAction(1)" :class="{active:selected == 1}" class="nav__link restaurantes">Restaurantes</a></li>
                            <li class="nav__item"><a href="#" id="carrito" @click="linkAction(2)" :class="{active:selected == 2}" class="nav__link">Carrito</a></li>
                            <li class="nav__item"><a href="#" @click="linkAction(3)" :class="{active:selected == 3}" class="nav__link">Checkout</a></li>
                            <li class="nav__item"><a href="#"  class="nav__social-icon"><i class='bx bx-log-out' id="log-out-icon"></i></a></li>
                        </ul>
                    </div>
                    <div class="nav__social">
                        <a href="#" class="nav__social-icon"><i class='bx bx-search-alt' id="search-pc-icon"></i></a>
                        <a href="#" class="nav__social-icon"><i class='bx bx-cart-alt' id="cart-pc-icon"></i></a>
                        <a href="#" class="nav__social-icon"><i class='bx bx-log-out' id="log-out-pc-icon"></i></a>
                    </div>
                </div>
            </nav>
        </header>
  </div>
</template>
<script>
export default {
  name: 'app',
  data() {
         return {
             selected: undefined
         }
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
        linkAction(item) {
            this.selected = item; 
            this.$refs.navMenu.classList.remove('show')
        }
    /*===== ACTIVE AND REMOVE MENU =====*/
    // const navLink = document.querySelectorAll('.nav__link'); 

}
}
</script>
