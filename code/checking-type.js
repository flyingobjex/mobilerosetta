let movieCount = 0
let songCount = 0

for (item in library) {
    if (item instanceof Movie) {
        movieCount += 1
    } else if (item instanceof Song) {
        songCount += 1
    }
}
