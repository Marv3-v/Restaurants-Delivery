import http from "../http-common";

class LocalidadesDataService {
    get(idCliente) {
        return http.get(`/localidades/${idCliente}`);
    }

}

export default new LocalidadesDataService();
