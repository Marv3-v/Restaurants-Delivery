import axios from "axios";
import authHeader from "./auth-header";

const API_URL = "http://localhost:8080/api/test/";

class ClienteService {
  getPublicContent() {
    return axios.get(API_URL + "all");
  }

  getClienteBoard() {
    return axios.get(API_URL + "user", { headers: authHeader() });
  }

}

export default new ClienteService();
