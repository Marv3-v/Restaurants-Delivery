import Vue from 'vue'
import Vuex from "vuex"

Vue.use(Vuex);

export const store = new Vuex.Store({
    state: {
        count: 0,
        cartProducts: [],
    },
    getters: {
        getCount: state => {
            return state.count;
        }
    },
    mutations: {
        newProduct(state, payload) {
            let producto = payload;
            producto = {...producto, cantidad: 1}
            if(state.cartProducts.length > 0) {
                let bool = state.cartProducts.some(i => i.id == producto.id)
                if(bool) {
                    let productoIndex = state.cartProducts.findIndex(el => el.id === producto.id)
                    state.cartProducts[productoIndex]['cantidad'] += 1
                    localStorage.setItem("Carrito", JSON.stringify(state.cartProducts));
                } else {
                    state.cartProducts.push(producto);
                    localStorage.setItem("Carrito", JSON.stringify(state.cartProducts));

                }
            } else {
                state.cartProducts.push(producto);
                localStorage.setItem("Carrito", JSON.stringify(state.cartProducts));

            }
            state.count++;          
            }
        },
    actions: {
        addToCart: (context, payload) => {
            context.commit('newProduct', payload)
        }
    }
});