<template>
     <main id="main" class="main art-grid">
          <div style="text-align: center; color: #F7567C;">
                
                    <p><b style="font-size: 20px">RUEDAS</b>, somos una app de entrega adomicilio para los Restaurantes de comida rápida más importantes de la Región. ¡LLEVAMOS TU COMIDA AL DÍA!</p>
                    <p style="font-size: 20px; text-align:center"><b>HISTORIA</b></p>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Fugit doloribus veritatis cupiditate facilis illo optio, mollitia a animi. Vel quae ex necessitatibus earum inventore expedita ea animi delectus consequuntur. Necessitatibus?</p>
                     <p style="font-size: 20px; text-align:center"><b>PRECIO</b></p>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Fugit doloribus veritatis cupiditate facilis illo optio, mollitia a animi. Vel quae ex necessitatibus earum inventore expedita ea animi delectus consequuntur. Necessitatibus?</p>
                     <p style="font-size: 20px; text-align:center"><b>CUIDADOS DE SALUD</b></p>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Fugit doloribus veritatis cupiditate facilis illo optio, mollitia a animi. Vel quae ex necessitatibus earum inventore expedita ea animi delectus consequuntur. Necessitatibus?</p>
                </div>
                <div class='card-signup '>
                    <span @click="back">Volver</span>
                   <h2 class='title' style="text-align: center">REGISTRATE Y LLEGAMOS</h2>
                   <div class='content'>
                       <form action='' class='form-class'>
                           <div>
                               <label for='name'>Nombre</label>
                               <input type='text' name='name' id='name'>
                                <label for='user'>Usuario</label>
                                <input type='text' name='user' id='user'>
                            </div>
                            <div>
                                <label for='password'>Contraseña</label>
                                <input type='password' name='password' id='password'>
                                <label for='telefono'>Telefono</label>
                                <input type='text' name='telefono' id='telefono'>
                            </div>
                            <div>
                                <label for='nit'>Nit</label>
                                <input type='text' name='nit' id='nit'>
                                <label for='direccion'>Localidad</label>
                                <input type='text' name='direccion' placeholder="Barrio, Colonia, etc" id='direccion'>
                            </div>
                            <div>
                                <label for='calle'>Calle</label>
                                <input type='text' name='calle' id='calle'>
                                <label for='adicional'>Adicional</label>
                                <input type='text' name='adicional' placeholder="Detalles del lugar" id='adicional'>
                            </div>
                            <div style="display: flex; justify-content: space-around">
                                <span style="cursor: pointer" @click="back">Volver</span>
                                <span style="cursor: pointer">Crear</span>
                            </div>
                       </form>
                   </div>
                </div>
            </main>
</template>
<script>
export default {
    data() {
        return() => {

        }
    },
    methods: {
        back() {
            return this.$router.push("/");
        }
    }
}
</script>