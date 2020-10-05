import http from "../http-common";

class RestauranteDataService {
    get(id) {
        return http.get(`/restaurantes/${id}/menu`);
    }

}

export default new RestauranteDataService();
