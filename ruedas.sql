CREATE DATABASE ruedasdb;

-- Tabla Estados
CREATE TABLE estados(
    id INT NOT NULL AUTO_INCREMENT,
    estado VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);

-- Tabla Restaurantes
CREATE TABLE restaurantes(
    id INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(400) NOT NULL,
    imagen_path VARCHAR(1000),
    PRIMARY KEY (id)
);

-- Tabla Tipo Contenido
CREATE TABLE tipo_contenido(
    id INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(400) NOT NULL,
    imagen_path VARCHAR(1000), 
    PRIMARY KEY (id)
);

-- Tabla Métodos de pago
CREATE TABLE metodo_pago(
    id INT NOT NULL AUTO_INCREMENT,
    tipo VARCHAR(200) NOT NULL,
    PRIMARY KEY (id)
);

-- Tabla Clientes
CREATE TABLE clientes(
    id INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(500) NOT NULL,
    usuario VARCHAR(100) NOT NULL,
    contrasenia 
);
