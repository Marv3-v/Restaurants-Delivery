import http from "../http-common";

class RestaurantesDataService {
  getAll() {
    return http.get("/restaurantes");
  }

  get(id) {
    return http.get(`/restaurantes/${id}`);
  }
  
}

export default new RestaurantesDataService();
