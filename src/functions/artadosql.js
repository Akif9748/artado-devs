const sql = require("mssql");

class ArtadoSql {
    // SQL SELECT command
    static async select(data, table, where, there, data_type) {
        try {
            const query = `SELECT ${data} FROM ${table} WHERE ${where} = '${there}'`;
            const result = await sql.query(query);

            if (data_type === "string") {
                const info = result.recordset[0][data];
                return info;
            } else {
                return "true";
            }
        } catch (error) {
            console.error(error);
            throw error;
        }
    }

    static async selectInt(data, table, where, there) {
        try {
            const query = `SELECT ${data} FROM ${table} WHERE ${where} = '${there}'`;
            const result = await sql.query(query);

            const info = result.recordset[0][data];
            return info;
        } catch (error) {
            console.error(error);
            throw error;
        }
    }

    // SQL UPDATE command
    static async update(data, newdata, table, where, there) {
        try {
            const query = `UPDATE ${table} SET ${data} = '${newdata}' WHERE ${where} = '${there}'`;
            await sql.query(query);

        } catch (error) {
            console.error(error);
            throw error;
        }
    }
}

module.exports = ArtadoSql;
