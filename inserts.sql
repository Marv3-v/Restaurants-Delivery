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
-- POLLO CAMPERO
INSERT INTO seccionmenus VALUES(null, "Pollo", "pollocat.png", CURDATE(), CURDATE(), 1);
INSERT INTO seccionmenus VALUES(null, "Sandwich y Hamburgesa", "sandyhambcat.png", CURDATE(), CURDATE(), 1);
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
    INSERT INTO productos VALUES(null, "Combo 10 piezas", 145, 1, 1, "combo10.png", CURDATE(), CURDATE());
    INSERT INTO productos VALUES(null, "Combo 8 piezas", 129, 1, 1, "combo08.png", CURDATE(), CURDATE());
    INSERT INTO productos VALUES(null, "Combo 6 piezas", 103, 1, 1, "combo06.png", CURDATE(), CURDATE());

    -- CATEGORIA SANDWICHES Y HAMBURGESAS
    INSERT INTO productos VALUES(null, "Hamburgesa Americana", 103, 1, 2, "americana.png", CURDATE(), CURDATE());

    -- PIZZA
    INSERT INTO productos VALUES(null, "Super personal", 40, 1, 3, "superp.png", CURDATE(), CURDATE());
    INSERT INTO productos VALUES(null, "2 pizzas grandes", 80, 1, 3, "2pizzasgrande.png", CURDATE(), CURDATE());
    INSERT INTO productos VALUES(null, "3 pizzas grandes", 120, 1, 3, "3pizzasgrande.png", CURDATE(), CURDATE());
    INSERT INTO productos VALUES(null, "Pizza 4x4", 120, 1, 3, "3pizzasgrande.png", CURDATE(), CURDATE());


    -- categoria Alitas y Camperitos
    INSERT INTO productos VALUES(null, "20 camperitos", 114, 1, 4, "20camperitos.png", CURDATE(), CURDATE());
    INSERT INTO productos VALUES(null, "30 Alitas", 144, 1, 4, "30alitas.png", CURDATE(), CURDATE());
    INSERT INTO productos VALUES(null, "20 Alitas", 114, 1, 4, "20alitas.png", CURDATE(), CURDATE());

    -- Desayunos
    INSERT INTO productos VALUES(null, "Super típico", 40, 1, 5, "tipico.png", CURDATE(), CURDATE());
    INSERT INTO productos VALUES(null, "Omelet Supremo", 40, 1, 5, "omelete.png", CURDATE(), CURDATE());
    INSERT INTO productos VALUES(null, "3 panqueques", 30, 1, 5, "panqueques.png", CURDATE(), CURDATE());


-- POLLO EXPRESS
    -- POLLO
    INSERT INTO productos VALUES(null, "Pechuga", 12, 2, 6, "pechuga.png", CURDATE(), CURDATE());
    INSERT INTO productos VALUES(null, "Ala", 5, 2, 6, "ala.png", CURDATE(), CURDATE());
    INSERT INTO productos VALUES(null, "Pierna", 5, 2, 6, "pierna.png", CURDATE(), CURDATE());
    INSERT INTO productos VALUES(null, "papas", 5, 2, 6, "papas.png", CURDATE(), CURDATE());

-- DOMINOS
--PRODUCTOS PIZZA
    INSERT INTO productos VALUES(null, "Esp. 5 Carnes", 120, 3, 7, "5carnes.png", CURDATE(), CURDATE());
    INSERT INTO productos VALUES(null, "Hawaiana", 120, 3, 7, "hawaiana.png", CURDATE(), CURDATE());
    INSERT INTO productos VALUES(null, "Americana", 120, 3, 7, "americana.png", CURDATE(), CURDATE());

-- CALZONE
    INSERT INTO productos VALUES(null, "Deluxe", 60, 3, 8, "deluxe.png", CURDATE(), CURDATE());
    INSERT INTO productos VALUES(null, "Tropical", 60, 3, 8, "tropical.png", CURDATE(), CURDATE());
    INSERT INTO productos VALUES(null, "Di Carne", 60, 3, 8, "dicarne.png", CURDATE(), CURDATE());
    INSERT INTO productos VALUES(null, "Churrasco", 60, 3, 8, "churrasco.png", CURDATE(), CURDATE());

-- Bebidas
    INSERT INTO productos VALUES(null, "Coca Cola", 10, 3, 9, "cocacola.png", CURDATE(), CURDATE());
    INSERT INTO productos VALUES(null, "Sprite", 10, 3, 9, "sprite.png", CURDATE(), CURDATE());
    INSERT INTO productos VALUES(null, "Agua", 5, 3, 9, "agua.png", CURDATE(), CURDATE());

-- Sides
    INSERT INTO productos VALUES(null, "Bucket", 50, 3, 10, "bucket.png", CURDATE(), CURDATE());
    INSERT INTO productos VALUES(null, "Ribs", 50, 3, 10, "ribs.png", CURDATE(), CURDATE());
    INSERT INTO productos VALUES(null, "Hot Wings", 50, 3, 10, "hotwings.png", CURDATE(), CURDATE());
    INSERT INTO productos VALUES(null, "Chessy Bread", 50, 3, 10, "chessy.png", CURDATE(), CURDATE());


