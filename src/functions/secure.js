const crypto = require('crypto');

module.exports = class SecurityHelper {
    static generateSalt(nSalt) {
        const saltBytes = crypto.randomBytes(nSalt);
        return saltBytes.toString('base64');
    }

    static hashPassword(password, salt, nIterations, nHash) {
        const saltBytes = Buffer.from(salt, 'base64');
        const hashBytes = crypto.pbkdf2Sync(password, saltBytes, nIterations, nHash, 'sha1');
        return hashBytes.toString('base64');
    }
}

