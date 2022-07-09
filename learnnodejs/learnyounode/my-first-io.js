const fs = require('fs');

let fileBuffer = fs.readFileSync(process.argv[2]);
const str = fileBuffer.toString();
let array_lines = str.split('\n');

console.log(array_lines.length-1);
