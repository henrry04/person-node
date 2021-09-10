const dbCon = require('../../config/dbCon');

const con = dbCon();

module.exports = app => {
    app.get('/', (req, res) => {
        res.send("Server Node Running...")
    });

    app.get('/pais', (req, res) => {
        con.query('SELECT * FROM pais ORDER BY nombre', (error, data) => {
            res.send(data)
        })
    });

    app.post('/save', (req, res) => {
        const data = req.body;
        var query = "INSERT INTO `personas` (`nombre`,`pais`) VALUES ('"+data.nombre+"','"+data.country+"');"
        con.query(query, (error, data) => {
            res.send({'state':'saved'})
        })
    });

    app.get('/personas', (req, res) => {
        con.query('SELECT personas.nombre, pais.nombre pais, personas.created FROM personas INNER JOIN pais ON idpais = pais ORDER BY idpersonas DESC', (error, data) => {
            res.send(data)
        })
    });
}