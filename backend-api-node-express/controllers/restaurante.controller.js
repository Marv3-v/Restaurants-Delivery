// const db = require("../models");
const db = require('../models/index');
const Restaurante = db.restaurantes;
// const Op = db.Sequelize.Op;
//Obtener todos los restaurantes
exports.findAll = (req, res) => {
    Restaurante.findAll().then(data => {
        res.send(data);
    }).catch(err => {
        res.status(500).send({
            message:
                err.message || "Hubo un error al obtener los restaurantes"
        })
    });
}

//Obtener solo un restaurante
exports.findOne = (req, res) => {
    const id = req.params.id;

    Restaurante.findByPk(id).then(data => {
        res.send(data);
    }).catch(err => {
        res.status(500).send({
            message: " Error al obtener un restaurante" + id   
        })
    })
}