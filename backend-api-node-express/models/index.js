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
// Relaciones
// Un restaurante tiene varias secciones/platillos
db.restaurantes.hasMany(db.seccionmenus, { as: "seccionmenus"});
db.seccionmenus.belongsTo(db.restaurantes, {
    foreignKey: "restauranteId",
    as: "restaurantes"
})

module.exports = db;
