const fs = require('fs');

fs.readFile(process.argv[2],'utf8',(err,data)=>{
  if(err){
    return console.log(err);
  }
  let array_lines = data.split('\n');
  console.log(array_lines.length-1);
});
