var Client = require('ftp');
var fs = require('fs');

console.log("__dirname = " + __dirname);
var c = new Client();
c.on('ready', function() {
  console.log("ready!! ");
  c.put('../build/index.html', 'index.html', function(err) {
    if (err) throw err;
    console.log("finishing main upload");

    c.put('../build/js-kotlin.html', 'js-kotlin.html', function(err) {
      if (err) throw err;
      console.log("finishing js-kotlin upload");

      c.put('../build/kotlin-swift.html', 'kotlin-swift.html', function(err) {
        if (err) throw err;
        console.log("finishing kotlin-swift upload");

        c.put('../build/js-swift.html', 'js-swift.html', function(err) {
          if (err) throw err;
          console.log("finishing js-swift upload");
          c.end();
        });
      });
    });
  });
});

var config = require('../config/config');
c.connect(config);