Number.prototype.km = function() { return this * 10000 }
Number.prototype.m = function() { return this }
Number.prototype.cm = function() { return this / 100 }
Number.prototype.mm = function() { return this / 1000 }
Number.prototype.ft = function() { return this / 3.28084 }

let oneInch = (25.4).mm()
console.log(`One inch is ${oneInch} meters`)
// prints "One inch is 0.0254 meters"
let threeFeet = (3.0).ft()
console.log(`Three feet is ${threeFeet} meters`)
// prints "Three feet is 0.914399970739201 meters"
