<template>
     <main id="main" class="main art-grid">
                <div style="text-align: center; color: #F7567C; top: 10%">
                    <b style="font-size: 20px">RUEDAS</b>, somos una app de entrega adomicilio para los Restaurantes de comida rápida más importantes de la Región. ¡LLEVAMOS TU COMIDA AL DÍA!
                </div>
                <div class='card-login'>
                    RUEDAS
                   <h2 class='title'>INICIAR SESIÓN</h2>
                   <div class='content'>
                       <form name="form" @submit.prevent="handleLogin" class='form-class'>
                           <div>
                               <label for='usuario'>Usuario</label>
                               <input v-model="user.usuario" v-validate="'required'" type="text" class="form-control" name="usuario">
                                <div
                                    v-if="errors.has('usuario')"
                                    class="alert alert-danger"
                                    role="alert"
                                >Ingrese el usuario!</div>
                            </div>
                            <div>
                                <label for='password'>Contraseña</label>
                                <input v-model="user.password" v-validate="'required'" type="password" class="form-control" name="password">
                                                        <div
                                    v-if="errors.has('password')"
                                    class="alert alert-danger"
                                    role="alert"
                                >Ingrese la contraseña!</div>
                            </div>
                            <div style="display: flex; justify-content: space-between">
                                <button style="cursor: pointer" @click="signup">Registrarse</button>
                                <button style="cursor: pointer" :disabled="loading" >Entrar</button>
                            </div>
                             <div class="form-group" style="text-align:center;">
                                <div v-if="message" style="font-size: 12px;" role="alert">{{message}}</div>
                              </div>
                       </form>
                   </div>
                </div>
            </main>
</template>
<script>
import User from '../models/user';

export default {
  name: 'Login',
  data() {
    return {
      user: new User('', ''),
      loading: false,
      message: ''
    };
  },
  computed: {
    loggedIn() {
      return this.$store.state.auth.status.loggedIn;
    }
  },
  created() {
    if (this.loggedIn) {
      this.$router.push('/restaurantes');
    }
  },
  methods: {
    signup() {
        return this.$router.push("/signup");
    },
    handleLogin() {
      this.loading = true;
      this.$validator.validateAll().then(isValid => {
        if (!isValid) {
          this.loading = false;
          return;
        }

        if (this.user.usuario && this.user.password) {
          this.$store.dispatch('auth/login', this.user).then(
            () => {
              this.$router.push('/restaurantes');

            },
            error => {
              this.loading = false;
              this.message =
                (error.response && error.response.data) ||
                error.message ||
                error.toString();
            }
          );
        }
      });
    }
  }
};
</script>