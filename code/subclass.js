class Shape {
  constructor() {
    this.numberOfSides = 0
  }

  simpleDescription() {
    return `A shape with ${this.numberOfSides} sides.`
  }
}

class NamedShape {
  constructor(name) {
    this.numberOfSides = 0
    this.name = name
  }

  simpleDescription() {
    return `A shape with ${this.numberOfSides} sides.`
  }
}

class Square extends NamedShape {
  constructor(sideLength, name) {
    super(name)
    this.sideLength = sideLength
    this.numberOfSides = 4
  }

  area() {
    return this.sideLength * this.sideLength
  }

  simpleDescription() {
    return `A square with sides of length ${this.sideLength}`
  }
}

let test = new Square(5.2, "square")
test.area()
test.simpleDescription()
