function sumOf(...numbers) {
    let sum = 0
    for (let i in numbers) {
        sum += numbers[i]
    }
    return sum
}
sumOf(42, 597, 12)
