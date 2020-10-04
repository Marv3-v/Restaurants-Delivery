-- === ESTADOS ===

-- ACTIVO
INSERT INTO estados VALUES(null, 1, CURDATE(), CURDATE());
-- INACTIVO
INSERT INTO estados VALUES(null, 0, CURDATE(), CURDATE());

-- == RESTAURANTES ==

-- ID, NOMBRE, IMAGEN_PATH, CREATED_AT, UPDATED_AT
INSERT INTO restaurantes VALUES(null, "Pollo Campero", "pollocampero.png", CURDATE(), CURDATE());
INSERT INTO restaurantes VALUES(null, "Pollo Express", "polloexpress.png", CURDATE(), CURDATE());
INSERT INTO restaurantes VALUES(null, "Domino's", "dominos.png", CURDATE(), CURDATE());
INSERT INTO restaurantes VALUES(null, "Taco Bell", "tacobell.png", CURDATE(), CURDATE());

-- == SECCION MENU ==
-- id, nombre, imagen,created_at, updated_at, restaurante_id
INSERT INTO seccionmenus VALUES(null, "pollo", "pollo.png", CURDATE(), CURDATE(), 1);
