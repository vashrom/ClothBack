const MySqli = require('mysqli');

let conn = new MySqli({
    host: '127.0.0.1',
    post: 3306,
    user: 'root',
    pass: '',
    db: 'baydalini_shop'

});

let db = conn.emit(false, '');

module.exports = {
    database: db
};