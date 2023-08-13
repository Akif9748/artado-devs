const crypto = require('crypto');
module.exports = class EncryptClass {
    static Encrypt(clearText) {
        const encryptionKey = 'key';
        const clearBytes = Buffer.from(clearText, 'utf16le');
        const iv = Buffer.from([0x49, 0x76, 0x61, 0x6e, 0x20, 0x4d, 0x65, 0x64, 0x76, 0x65, 0x64, 0x65, 0x76]);

        const cipher = crypto.createCipheriv('aes-256-cbc', Buffer.from(encryptionKey), iv);
        let encrypted = cipher.update(clearBytes, 'utf16le', 'base64');
        encrypted += cipher.final('base64');
        return encrypted;
    }

    static Decrypt(cipherText) {
        const encryptionKey = 'key';
        const cipherBytes = Buffer.from(cipherText, 'base64');
        const iv = Buffer.from([0x49, 0x76, 0x61, 0x6e, 0x20, 0x4d, 0x65, 0x64, 0x76, 0x65, 0x64, 0x65, 0x76]);

        const decipher = crypto.createDecipheriv('aes-256-cbc', Buffer.from(encryptionKey), iv);
        let decrypted = decipher.update(cipherBytes, 'binary', 'utf16le');
        decrypted += decipher.final('utf16le');
        return decrypted;
    }

    static async FileEncrypt(inputFilePath, outputFilePath) {
        const encryptionKey = 'key';
        const iv = Buffer.from([0x49, 0x76, 0x61, 0x6e, 0x20, 0x4d, 0x65, 0x64, 0x76, 0x65, 0x64, 0x65, 0x76]);

        const cipher = crypto.createCipheriv('aes-256-cbc', Buffer.from(encryptionKey), iv);
        const input = require('fs').createReadStream(inputFilePath);
        const output = require('fs').createWriteStream(outputFilePath);

        input.pipe(cipher).pipe(output);
        return new Promise((resolve) => {
            output.on('finish', resolve);
        });
    }
}