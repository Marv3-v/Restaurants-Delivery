-- === ESTADOS ===

-- ACTIVO
INSERT INTO estados VALUES(null, 1, CURDATE(), CURDATE());
-- INACTIVO
INSERT INTO estados VALUES(null, 0, CURDATE(), CURDATE());

-- METODOS PAGO
INSERT INTO metodos_pago VALUES(null, "Contra Entrega", CURDATE(), CURDATE());
-- == RESTAURANTES ==

-- ID, NOMBRE, IMAGEN_PATH, CREATED_AT, UPDATED_AT
INSERT INTO restaurantes VALUES(null, "Pollo Campero", "pollocampero.png", CURDATE(), CURDATE());
INSERT INTO restaurantes VALUES(null, "Pollo Express", "polloexpress.png", CURDATE(), CURDATE());
INSERT INTO restaurantes VALUES(null, "Domino's", "dominos.png", CURDATE(), CURDATE());
INSERT INTO restaurantes VALUES(null, "Taco Bell", "tacobell.png", CURDATE(), CURDATE());

-- == SECCION MENU ==
-- id, nombre, imagen,created_at, updated_at, restaurante_id
-- POLLO CAMPERO
INSERT INTO seccionmenus VALUES(null, "Pollo", "pollocat.png", CURDATE(), CURDATE(), 1);
INSERT INTO seccionmenus VALUES(null, "Hamburgesas", "sandyhambcat.png", CURDATE(), CURDATE(), 1);
INSERT INTO seccionmenus VALUES(null, "Alitas y Camperitos", "alitasycamp.png", CURDATE(), CURDATE(), 1);
INSERT INTO seccionmenus VALUES(null, "Desayunos", "desayunos.png", CURDATE(), CURDATE(), 1);

-- POLLO EXPRESS ID 2
INSERT INTO seccionmenus VALUES(null, "Pollo", "polloex.png", CURDATE(), CURDATE(), 2);

-- DOMINO'S ID 3
INSERT INTO seccionmenus VALUES(null, "Pizza's", "pizzacat.png", CURDATE(), CURDATE(), 3);
INSERT INTO seccionmenus VALUES(null, "Calzone", "calzone.png", CURDATE(), CURDATE(), 3);
INSERT INTO seccionmenus VALUES(null, "Bebidas", "bebidas.png", CURDATE(), CURDATE(), 3);
INSERT INTO seccionmenus VALUES(null, "Sides", "sides.png", CURDATE(), CURDATE(), 3);


-- TACO BELL ID 4
INSERT INTO seccionmenus VALUES(null, "Individuales", "individuales.png", CURDATE(), CURDATE(), 4);
INSERT INTO seccionmenus VALUES(null, "Combos", "combos.png", CURDATE(), CURDATE(), 4);
INSERT INTO seccionmenus VALUES(null, "Postres", "postres.png", CURDATE(), CURDATE(), 4);
INSERT INTO seccionmenus VALUES(null, "Complementos", "complementos.png", CURDATE(), CURDATE(), 4);




-- === PRODUCTOS ===
-- ID, NOMBRE, PRECIO, RESTAURANTEID, SECCIONMENUID, IMAGEN_PATH, CREATEDAT, UPDATEDAT

-- PRODUCTOS POLLO CAMPERO  // CATEGORIA POLLO
    INSERT INTO productos VALUES(null, "Combo 12 piezas", 170, 1, 1, "combo12.png", CURDATE(), CURDATE());
    INSERT INTO productos VALUES(null, "Combo 10 piezas", 145, 1, 1, "combo12.png", CURDATE(), CURDATE());
    INSERT INTO productos VALUES(null, "Combo 8 piezas", 129, 1, 1, "combo12.png", CURDATE(), CURDATE());
    INSERT INTO productos VALUES(null, "Combo 6 piezas", 103, 1, 1, "combo06.png", CURDATE(), CURDATE());

    -- CATEGORIA SANDWICHES Y HAMBURGESAS
    INSERT INTO productos VALUES(null, "H.Americana", 30, 1, 2, "americana.png", CURDATE(), CURDATE());
    INSERT INTO productos VALUES(null, "S. Barbacoa", 40, 1, 2, "sbarbacoa.png", CURDATE(), CURDATE());
    INSERT INTO productos VALUES(null, "S. Parrilla", 40, 1, 2, "sparrilla.png", CURDATE(), CURDATE());


    -- categoria Alitas y Camperitos
    INSERT INTO productos VALUES(null, "20 camperitos", 114, 1, 3, "20camperitos.png", CURDATE(), CURDATE());
    INSERT INTO productos VALUES(null, "30 Alitas", 144, 1, 3, "30alitas.png", CURDATE(), CURDATE());
    INSERT INTO productos VALUES(null, "20 Alitas", 114, 1, 3, "30alitas.png", CURDATE(), CURDATE());

-- Desayuunos
    INSERT INTO productos VALUES(null, "Super Típico", 40, 1, 4, "tipico.png", CURDATE(), CURDATE());
    INSERT INTO productos VALUES(null, "Omelet Supremo", 40, 1, 4, "omelete.png", CURDATE(), CURDATE());
    INSERT INTO productos VALUES(null, "3 panqueques", 30, 1, 4, "panqueques.png", CURDATE(), CURDATE());


-- POLLO EXPRESS
    -- POLLO
    INSERT INTO productos VALUES(null, "Pechuga", 12, 2, 5, "pechuga.png", CURDATE(), CURDATE());
    INSERT INTO productos VALUES(null, "Ala", 5, 2, 5, "ala.png", CURDATE(), CURDATE());
    INSERT INTO productos VALUES(null, "Pierna", 5, 2, 5, "pierna.png", CURDATE(), CURDATE());
    INSERT INTO productos VALUES(null, "Papas", 5, 2, 5, "papas.png", CURDATE(), CURDATE());
    

-- DOMINOS
-- Pizzas
    INSERT INTO productos VALUES(null, "5 Carnes", 120, 3, 6, "pamericana.png", CURDATE(), CURDATE());
    INSERT INTO productos VALUES(null, "Hawaiana", 120, 3, 6, "pamericana.png", CURDATE(), CURDATE());
    INSERT INTO productos VALUES(null, "P.Americana", 120, 3, 6, "pamericana.png", CURDATE(), CURDATE());
-- CALZONE
    INSERT INTO productos VALUES(null, "Deluxe", 60, 3, 7, "deluxe.png", CURDATE(), CURDATE());
    INSERT INTO productos VALUES(null, "Tropical", 60, 3, 7, "dicarne.png", CURDATE(), CURDATE());
    INSERT INTO productos VALUES(null, "Di Carne", 60, 3, 7, "dicarne.png", CURDATE(), CURDATE());
    INSERT INTO productos VALUES(null, "Churrasco", 60, 3, 7, "deluxe.png", CURDATE(), CURDATE());

-- Bebidas
    INSERT INTO productos VALUES(null, "Coca Cola", 10, 3, 8, "cocacola.png", CURDATE(), CURDATE());
    INSERT INTO productos VALUES(null, "Sprite", 10, 3, 8, "sprite.png", CURDATE(), CURDATE());
    INSERT INTO productos VALUES(null, "Agua", 5, 3, 8, "agua.png", CURDATE(), CURDATE());

-- Sides
    INSERT INTO productos VALUES(null, "Bucket", 50, 3, 9, "bucket.png", CURDATE(), CURDATE());
    INSERT INTO productos VALUES(null, "Ribs", 50, 3, 9, "ribs.png", CURDATE(), CURDATE());
    INSERT INTO productos VALUES(null, "Hot Wings", 50, 3, 9, "hotwings.png", CURDATE(), CURDATE());
    INSERT INTO productos VALUES(null, "Chessy Bread", 50, 3, 9, "chessy.png", CURDATE(), CURDATE());    

-- TACO BELL
-- Individuales
    INSERT INTO productos VALUES(null, "Crunchy Burrito", 17, 4, 10, "crunchy.png", CURDATE(), CURDATE());
    INSERT INTO productos VALUES(null, "Gordita Crunchy", 18, 4, 10, "gordita.png", CURDATE(), CURDATE());
    INSERT INTO productos VALUES(null, "Burrito de Pollo", 16, 4, 10, "depollo.png", CURDATE(), CURDATE());
    INSERT INTO productos VALUES(null, "Supreme", 19, 4, 10, "supreme.png", CURDATE(), CURDATE());

-- Combos
    INSERT INTO productos VALUES(null, "Chalupa Baja", 32, 4, 11, "chalupa.png", CURDATE(), CURDATE());
    INSERT INTO productos VALUES(null, "B. 5 capas", 32, 4, 11, "burrito5capas.png", CURDATE(), CURDATE());
    INSERT INTO productos VALUES(null, "Black Bell Box", 49, 4, 11, "blackbell.png", CURDATE(), CURDATE());
    INSERT INTO productos VALUES(null, "2 Supreme", 50, 4, 11, "2supreme.png", CURDATE(), CURDATE());

-- Postres
    INSERT INTO productos VALUES(null, "Cinnamon Twists", 11, 4, 12, "cinnamon.png", CURDATE(), CURDATE());
    INSERT INTO productos VALUES(null, "Chocodilla", 32, 4, 12, "chocodilla.png", CURDATE(), CURDATE());
    INSERT INTO productos VALUES(null, "Empanada de Manzana", 11, 4, 12, "manzana.png", CURDATE(), CURDATE());
    INSERT INTO productos VALUES(null, "Flauta Dulce Leche", 11, 4, 12, "flauta.png", CURDATE(), CURDATE());

-- Complementos
    INSERT INTO productos VALUES(null, "Papas Mexicanas", 17, 4, 13, "mexicanas.png", CURDATE(), CURDATE());
    INSERT INTO productos VALUES(null, "Papas Supreme", 19, 4, 13, "papasupreme.png", CURDATE(), CURDATE());
    INSERT INTO productos VALUES(null, "Papas grandes", 14, 4, 13, "grandes.png", CURDATE(), CURDATE());
    INSERT INTO productos VALUES(null, "Nachos con Queso", 11, 4, 13, "nachos.png", CURDATE(), CURDATE());


-- {
--     "detalles": [
--       {
--         "productoId": 1,
--         "cantidad": 3,
--         "precio": 100,
--         "estadoId": 1,
--         "subtotal": 300
--       },
--     ],
--     "total": 300,
--     "clienteId": 1,
--     "estadoId": 1,
--     "metodoId": 1,
--     "tarifa": 1
-- }

-- {
--     "nombre": "Marvin Alarcón",
--     "usuario": "marv3",
--     "password":"1234",
--     "nit": "78654413",
--     "telefono":"34689864",
--     "localidad": "Vista Hermosa",
--     "calle": "2da Ave.",
--     "descripcion": "0 95 Zona 2"
-- }

-- {
--     "nombre": "Robert De Niro",
--     "usuario": "robert",
--     "password":"4321",
--     "nit": "80564436",
--     "telefono":"46958234",
--     "localidad": "Santa Marta",
--     "calle": "2da Ave.",
--     "descripcion": "0001 Zona 2"
-- }
