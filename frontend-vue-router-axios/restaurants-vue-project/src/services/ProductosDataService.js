import http from "../http-common";

class ProductosDataService {
    getAll(idrestaurante, id) {
        return http.get(`/restaurantes/${idrestaurante}/menu/${id}`);
    }
    // get(id) {
    //     return http.get(`/restaurantes/${id}`);
    // }

}

export default new ProductosDataService();

