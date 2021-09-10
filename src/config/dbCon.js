const mysql = require('mysql');

module.exports = () => {
    return mysql.createConnection({
        host: 'tutorial-db-instance.csysdiwfhk41.us-west-2.rds.amazonaws.com',
        user: 'tutorial_user',
        password: 'Henrry04.',
        database: 'personas'
    });
}