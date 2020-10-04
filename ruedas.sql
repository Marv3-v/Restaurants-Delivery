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
CREATE TABLE seccionmenu(
    id INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    imagen_path VARCHAR(250),
    createdAt TIMESTAMP,
    updatedAt TIMESTAMP,
    restaurante_id INT, 
    PRIMARY KEY (id),
    FOREIGN KEY (restaurante_id) REFERENCES restaurantes(id)
    
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
    cliente_id INT,
    createdAt TIMESTAMP,
    updatedAt TIMESTAMP,
    PRIMARY KEY (id),
    FOREIGN KEY (cliente_id) REFERENCES clientes(id)
);

-- Pedidos
CREATE TABLE pedidos(
    id INT NOT NULL AUTO_INCREMENT,
    metodo_pago_id INT,
    tarifa_envio DECIMAL(9,2),
    cliente_id INT,
    total DECIMAL(9,2),
    estado_id INT,
    createdAt TIMESTAMP,
    updatedAt TIMESTAMP,
    PRIMARY KEY (id),
    FOREIGN KEY (metodo_pago_id) REFERENCES metodos_pago(id),
    FOREIGN KEY (cliente_id) REFERENCES clientes(id),
    FOREIGN KEY (estado_id) REFERENCES estados(id)
);

-- Tabla de productos
CREATE TABLE productos(
    id INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(200) NOT NULL,
    precio DECIMAL(9,2),
    restaurante_id INT,
    seccionmenu_id INT,
    imagen_path VARCHAR(250),
    createdAt TIMESTAMP,
    updatedAt TIMESTAMP, 
    PRIMARY KEY (id),
    FOREIGN KEY (restaurante_id) REFERENCES restaurantes(id),
    FOREIGN KEY (seccionmenu_id) REFERENCES seccionmenu(id)
);

-- Producto Pedido
CREATE TABLE productos_pedido(
    id INT NOT NULL AUTO_INCREMENT,
    producto_id INT,
    pedido_id INT,
    precio_unitario DECIMAL(9,2),
    estado_id INT,
    createdAt TIMESTAMP,
    updatedAt TIMESTAMP,
    PRIMARY KEY (id),
    FOREIGN KEY (producto_id) REFERENCES productos(id),
    FOREIGN KEY (pedido_id) REFERENCES pedidos(id),
    FOREIGN KEY (estado_id) REFERENCES estados(id)
);