//Model seccionmenu Table
module.exports = (sequelize, Sequelize) => {
    const Seccionmenu = sequelize.define("seccionmenu", {
        nombre: {
            type: Sequelize.STRING,
        },
        imagen_path: {
            type: Sequelize.STRING,
        },
    });

    return Seccionmenu;
};
