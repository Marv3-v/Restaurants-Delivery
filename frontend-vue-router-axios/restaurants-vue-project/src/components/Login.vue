<template>
     <main id="main" class="main art-grid">
                <div style="text-align: center; color: #F7567C; top: 10%">
                    <b style="font-size: 20px">RUEDAS</b>, somos una app de entrega adomicilio para los Restaurantes de comida rápida más importantes de la Región. ¡LLEVAMOS TU COMIDA AL DÍA!
                </div>
                <div class='card-login'>
                    RUEDAS
                   <h2 class='title'>INICIAR SESIÓN</h2>
                   <div class='content'>
                       <form action='' class='form-class'>
                           <div>
                               <label for='user'>Usuario</label>
                               <input type='text' name='user' id='user'>
                            </div>
                            <div>
                                <label for='user'>Contraseña</label>
                                <input type='password' name='password' id='password'>
                            </div>
                            <div style="display: flex; justify-content: space-between">
                                <span style="cursor: pointer" @click="signup">Registrarse</span>
                                <span style="cursor: pointer">Entrar</span>
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
        signup() {
            return this.$router.push("/signup");
        }
    }
}
</script>