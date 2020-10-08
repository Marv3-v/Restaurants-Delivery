import Vue from 'vue'
import Vuex from "vuex"
import { auth } from "./auth.module";

Vue.use(Vuex);

export const store = new Vuex.Store({
         modules: {
           auth,
         },
         state: {
           count: 0,
           cartProducts: [],
           total: 0,
         },
         getters: {
           getCount: (state) => {
             return state.count;
           },
           getCartProducts: (state) => {
             return state.cartProducts;
           },
         },
         mutations: {
           newProduct(state, payload) {
             let producto = payload;
             producto = { ...producto, cantidad: 1, subtotal: payload.precio, productoId: payload.id, estadoId: 1 };
             if (state.cartProducts.length > 0) {
               let bool = state.cartProducts.some((i) => i.id == producto.id);
               if (bool) {
                 let productoIndex = state.cartProducts.findIndex(
                   (el) => el.id === producto.id
                 );
                 state.cartProducts[productoIndex]["cantidad"] += 1;
                //  
                 state.cartProducts[productoIndex]["subtotal"] = state.cartProducts[productoIndex]["cantidad"] * state.cartProducts[productoIndex]["precio"];
                //  
                //  localStorage.setItem(
                //    "Carrito",
                //    JSON.stringify(state.cartProducts)
                //  );
               } else {
                 state.cartProducts.push(producto);
                //  localStorage.setItem(
                //    "Carrito",
                //    JSON.stringify(state.cartProducts)
                //  );
               }
             } else {
               state.cartProducts.push(producto);
               localStorage.setItem(
                 "Carrito",
                 JSON.stringify(state.cartProducts)
               );
             }
             state.count++;
           },
           deleteProduct(state, payload) {
             // Si el carrito no esta vacio
             if (state.cartProducts.length > 0) {
               // Si dentro del carrito existe algun producto con el mismo ID con el que viene
               let bool = state.cartProducts.some((i) => i.id === payload.id);
               if (bool) {
                 // Entonces se obtiene el index de ese producto, (Que es igual al del payload)
                 let productIndex = state.cartProducts.findIndex(
                   (el) => el.id === payload.id
                 );
                 // Si no es igual a CERO, entonces vamos a disminuir su cantidad
                 if (state.cartProducts[productIndex]["cantidad"] !== 1) {
                   state.cartProducts[productIndex]["cantidad"] -= 1;
                   state.count--;
                    state.cartProducts[productIndex]["subtotal"] = state.cartProducts[productIndex]["cantidad"] * state.cartProducts[productIndex]["precio"];
                 }
               }
             }
           },
           deleteCompletely(state, payload) {
             if (state.cartProducts.length > 0) {
               let bool = state.cartProducts.some((i) => i.id === payload.id);
               if (bool) {
                 let productIndex = state.cartProducts.findIndex(
                   (el) => el.id === payload.id
                 );
                 state.count -= state.cartProducts[productIndex]["cantidad"];
                 state.cartProducts.splice(productIndex, 1);
               }
             }
           },
         },
         actions: {
           addToCart: (context, payload) => {
             context.commit("newProduct", payload);
           },
           deleteFromCart: (context, payload) => {
             context.commit("deleteProduct", payload);
           },
           deleteCompletely: (context, payload) => {
             context.commit("deleteCompletely", payload);
           },
         },
       });