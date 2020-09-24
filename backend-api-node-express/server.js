//Express y Body parser imports
const express = require("express");
const bodyParser = require("body-parser");

const app = express();

// Convierte las solicitudes a: application/json
app.use(bodyParser.json());

// Convierte las solicitudes a content-type: application/x-www-form-urlencoded
app.use(bodyParser.urlencoded({ extended: true }));

// Ruta de prueba
app.get("/", (req, res) => {
    res.json({ message: "Bienvenido a Ruedas." });
});

// Puerto
app.listen(3000, () => {
    console.log("Server is running on port 3000.");
});
