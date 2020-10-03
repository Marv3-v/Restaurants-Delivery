import http from "../http-common";

class DeliveryDataService {
  getAll() {
    return http.get("/restaurantes");
  }

  get(id) {
    return http.get(`/restaurantes/${id}`);
  }
  
}

export default new DeliveryDataService();
