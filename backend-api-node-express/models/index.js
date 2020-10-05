const dbConfig = require("../config/db.config.js");

const Sequelize = require("sequelize");

const sequelize = new Sequelize(dbConfig.DB, dbConfig.USER, dbConfig.PASSWORD, {
    host: dbConfig.HOST,
    dialect: dbConfig.dialect,
    operatorsAliases: false,
});

const db = {};

db.Sequelize = Sequelize;
db.sequelize = sequelize;

db.restaurantes = require("./restaurante.model.js")(sequelize, Sequelize);
db.seccionmenus = require("./seccionmenus.model.js")(sequelize, Sequelize);
db.productos = require("./productos.model")(sequelize, Sequelize);
// Relaciones
// Un restaurante tiene varias secciones/platillos
db.restaurantes.hasMany(db.seccionmenus, { as: "seccionmenus"});
db.seccionmenus.belongsTo(db.restaurantes, {
    foreignKey: "restauranteId",
    as: "restaurantes"
});

// Un menu tiene varias productos
db.seccionmenus.hasMany(db.productos, { as: "productos"});
db.productos.belongsTo(db.seccionmenus, {
    foreignKey: "seccionmenuId",
    as: "seccionmenus"  
});

module.exports = db;
