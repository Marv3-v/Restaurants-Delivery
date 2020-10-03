document.getElementById('restaurantes').addEventListener('click',showRestaurants);
document.getElementById('carrito').addEventListener('click',showShopingCart);
document.getElementById('cart-icon').addEventListener('click',showShopingCart);
document.getElementById('log-out-pc-icon').addEventListener('click',showLogin);
document.getElementById('log-out-icon').addEventListener('click',showLogin);


function showRestaurants() {
    articles = "<article class='card'><div class='card__img'><img src='assets/img/polloexpress.png'>" +
                "</div><div class='card__name'><p>Pollo Express</p></div><div class='card__precis'><div>" +
        "<span class='card__preci card__preci--now'>Pollo Express</span></div></div></article><article class='card'><div class='card__img'><img src='assets/img/polloexpress.png'>" +
        "</div><div class='card__name'><p>Pollo Express</p></div><div class='card__precis'><div>" +
        "<span class='card__preci card__preci--now'>Pollo Express</span></div></div></article><article class='card'><div class='card__img'><img src='assets/img/polloexpress.png'>" +
        "</div><div class='card__name'><p>Pollo Express</p></div><div class='card__precis'><div>" +
        "<span class='card__preci card__preci--now'>Pollo Express</span></div></div></article><article class='card'><div class='card__img'><img src='assets/img/polloexpress.png'>" +
        "</div><div class='card__name'><p>Pollo Express</p></div><div class='card__precis'><div>" +
                "<span class='card__preci card__preci--now'>Pollo Express</span></div></div></article>";
        document.getElementById('main').innerHTML =articles;
        document.getElementById('title').innerHTML ="<h1 class='title-shop' style='margin-top: 100px;'>Restaurantes</h1>";
 
}

function showShopingCart() {
        articles = "<article class='card'><div class='card__img'><img src='assets/img/polloexpress.png'>" +
                "</div><div class='card__name'><p>Pollo Express</p></div><div class='card__precis'><div>" +
                "<span class='card__preci card__preci--now'>Pollo Express</span></div></div></article><article class='card'><div class='card__img'><img src='assets/img/polloexpress.png'>" +
                "</div><div class='card__name'><p>Pollo Express</p></div><div class='card__precis'><div>" +
                "<span class='card__preci card__preci--now'>Pollo Express</span></div></div></article><article class='card'><div class='card__img'><img src='assets/img/polloexpress.png'>" +
                "</div><div class='card__name'><p>Pollo Express</p></div><div class='card__precis'><div>" +
                "<span class='card__preci card__preci--now'>Pollo Express</span></div></div></article><article class='card'><div class='card__img'><img src='assets/img/polloexpress.png'>" +
                "</div><div class='card__name'><p>Pollo Express</p></div><div class='card__precis'><div>" +
                "<span class='card__preci card__preci--now'>Pollo Express</span></div></div></article>";
        //Change active class Menu
        document.getElementById('main').innerHTML = articles;
        document.getElementById('carrito').className = 'nav__link active';
        document.getElementById('restaurantes').className = 'nav__link';
        document.getElementById('title').innerHTML = "<h1 class='title-shop' style='margin-top: 100px;'>Mi Pedido</h1>";

}

function showLogin() {
        loginhtml = "<div class='card-login center'>" +
                "<h2 class='title'>INICIAR SESIÓN</h2>"
                        "<div class='content'>" +
                        "<form action='' class='form-class'>" +
                        "<div>" +
                            "<label for='user'>Usuario</label>" +
                            "<input type='text' name='user' id='user'>" +                                       "</div>" +
                        "<div>" +
                        "<label for='user'>Contraseña</label>" +                                            "<input type='password' name='password' id='password'>" +
                        "</div>"
                        "</form>" +
                        "</div>" +
                        "</div>";
        document.getElementById('main').innerHTML = loginhtml;
        document.getElementById('title').innerHTML = "";

                                
}

