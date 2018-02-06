var Client = require('ftp');
var fs = require('fs');

console.log("__dirname = " + __dirname);
var c = new Client();
c.on('ready', function() {
  console.log("ready!! ");
  c.put('../build/index.html', 'index.html', function(err) {
    if (err) throw err;
    console.log("finishing main upload");
    c.put('../build/js-kt.html', 'js-kt.html', function(err) {
      if (err) throw err;
      console.log("finishing js-kt upload");
      c.end();
    });
    // c.end();
  });


});
// connect to localhost:21 as anonymous
var config = {
  "host": "ftp.rekawl.com",
  "user": "rose@learn.mobilerosetta.org",
  "port": 21,
  "password":"Social2014"

};
c.connect(config);