import http from "../http-common";

class PedidosDataServices {
  getAll() {
    return http.get("/pedidos");
  }

//   get(id) {
//     return http.get(`/pedidos/${id}`);
//   }
   create(data) {
        return http.post("/pedidos/", data);
}
  
}

export default new PedidosDataServices();
