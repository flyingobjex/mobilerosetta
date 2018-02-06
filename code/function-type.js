function makeIncrementer() {
    let addOne = function(number) {
        return 1 + number
    }
    return addOne
}
let increment = makeIncrementer()
increment(7)
