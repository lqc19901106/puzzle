const fs = require('fs');

console.log(__dirname);
fs.readdir(__dirname + '/routes', (err, files) => {
  console.log(err, files);
});
