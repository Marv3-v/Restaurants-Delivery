-- CREATE DATABASE ruedasdb;

-- Tabla Estados
CREATE TABLE estados(
    id INT NOT NULL AUTO_INCREMENT,
    estado BOOLEAN NOT NULL,
    createdAt TIMESTAMP,
    updatedAt TIMESTAMP,
    PRIMARY KEY (id)
);

-- Tabla Restaurantes
CREATE TABLE restaurantes(
    id INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(400) NOT NULL,
    imagen_path VARCHAR(1000),
    createdAt TIMESTAMP,
    updatedAt TIMESTAMP,
    PRIMARY KEY (id)
);

-- Tabla del Menu
CREATE TABLE seccionmenus(
    id INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    imagen_path VARCHAR(250),
    createdAt TIMESTAMP,
    updatedAt TIMESTAMP,
    restauranteId INT, 
    PRIMARY KEY (id),
    FOREIGN KEY (restauranteId) REFERENCES restaurantes(id)
    
);
-- CHILD
-- Tabla Métodos de pago
CREATE TABLE metodos_pago(
    id INT NOT NULL AUTO_INCREMENT,
    tipo VARCHAR(200) NOT NULL,
    createdAt TIMESTAMP,
    updatedAt TIMESTAMP,
    PRIMARY KEY (id)
);

-- Tabla Clientes
CREATE TABLE clientes(
    id INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(500) NOT NULL,
    usuario VARCHAR(100) NOT NULL,
    contrasenia VARCHAR(500) NOT NULL,
    nit VARCHAR(40) NULL,
    telefono VARCHAR(40),
    createdAt TIMESTAMP,
    updatedAt TIMESTAMP,
    PRIMARY KEY (id) 
);

-- Localidad
CREATE TABLE localidades(
    id INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(200) NOT NULL,
    calle VARCHAR(200) NOT NULL,
    descripcion VARCHAR(300) NULL,
    clienteId INT,
    createdAt TIMESTAMP,
    updatedAt TIMESTAMP,
    PRIMARY KEY (id),
    FOREIGN KEY (clienteId) REFERENCES clientes(id)
);

-- Pedidos
CREATE TABLE pedidos(
    id INT NOT NULL AUTO_INCREMENT,
    metodo_pagoId INT,
    tarifa_envio DECIMAL(9,2),
    clienteId INT,
    total DECIMAL(9,2),
    estadoId INT,
    createdAt TIMESTAMP,
    updatedAt TIMESTAMP,
    PRIMARY KEY (id),
    FOREIGN KEY (metodo_pagoId) REFERENCES metodos_pago(id),
    FOREIGN KEY (clienteId) REFERENCES clientes(id),
    FOREIGN KEY (estadoId) REFERENCES estados(id)
);

-- Tabla de productos
CREATE TABLE productos(
    id INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(200) NOT NULL,
    precio DECIMAL(9,2),
    restauranteId INT,
    seccionmenuId INT,
    imagen_path VARCHAR(250),
    createdAt TIMESTAMP,
    updatedAt TIMESTAMP, 
    PRIMARY KEY (id),
    FOREIGN KEY (restauranteId) REFERENCES restaurantes(id),
    FOREIGN KEY (seccionmenuId) REFERENCES seccionmenus(id)
);

-- Producto Pedido
CREATE TABLE productos_pedidos(
    id INT NOT NULL AUTO_INCREMENT,
    productoId INT,
    pedidoId INT,
    precio_unitario DECIMAL(9,2),
    estadoId INT,
    createdAt TIMESTAMP,
    updatedAt TIMESTAMP,
    PRIMARY KEY (id),
    FOREIGN KEY (productoId) REFERENCES productos(id),
    FOREIGN KEY (pedidoId) REFERENCES pedidos(id),
    FOREIGN KEY (estadoId) REFERENCES estados(id)
);