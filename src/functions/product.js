const sql = require('mssql');



class ArtadoDevs {
    static async getProducts(type, dev) {
        try {

            let query = '';
            if (type === 'all') {
                query = `SELECT * FROM artadoco_admin.Products WHERE DevID='${dev}' ORDER BY ID DESC`;
            } else {
                query = `SELECT * FROM artadoco_admin.Products WHERE Type='${type}' AND DevID='${dev}' ORDER BY ID DESC`;
            }

            const result = await sql.query(query);
            return result.recordset;
        } catch (error) {
            console.error('Error getting products:', error);
        } 
    }

    static async getProductInfo(info, product, dev) {
        try {

            const query = `SELECT ${info} FROM artadoco_admin.Products WHERE ID='${product}' AND DevID='${dev}'`;
            const result = await sql.query(query);
            return result.recordset[0][info];
        } catch (error) {
            console.error('Error getting product info:', error);
        } 
    }


    static async getAPIs( type, dev) {
        try {

            let query = '';
            if (type === 'all') {
                query = `SELECT * FROM artadoco_admin.APIs WHERE DevID='${dev}' ORDER BY ID DESC`;
            } else {
                query = `SELECT * FROM artadoco_admin.APIs WHERE Type='${type}' AND DevID='${dev}' ORDER BY ID DESC`;
            }

            const result = await sql.query(query);
            return result.recordset;
        } catch (error) {
            console.error('Error getting APIs:', error);
        }
    }

    static async getVersions(product) {
        try {

            const query = `SELECT * FROM artadoco_admin.Versions WHERE ProductID='${product}' ORDER BY ID DESC`;
            const result = await sql.query(query);
            return result.recordset;

        } catch (error) {
            console.error('Error getting versions:', error);
        } 
    }
}

module.exports = ArtadoDevs;
