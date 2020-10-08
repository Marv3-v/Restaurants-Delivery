import Vue from 'vue';
import App from './App.vue'
import { router } from './router';
import { store } from './store/store.js';
import VeeValidate from "vee-validate";
import "./assets/css/styles.css";
import "./assets/css/articles.css";
import "./assets/icons/css/boxicons.min.css";

Vue.config.productionTip = false
Vue.use(VeeValidate);

new Vue({
  router,
  store: store,
  render: h => h(App),
}).$mount('#app')
