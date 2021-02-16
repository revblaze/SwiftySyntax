import Cocoa

var str = "Hello, playground"

//print(Service.Music.apple.url)


class Vehicle {
    var speed: Int = 0

    func describe() {
        print("moving at \(speed) km/h")
    }
}


let rocket = Vehicle()
rocket.speed = 1080000000
rocket.describe()

class Bike: Vehicle {
    var color: String = ""
}

let myBike = Bike()
myBike.speed = 15
myBike.color = "red"
myBike.describe()

class Unicycle: Bike {
    var electric = false
}

let fastUnicycle = Unicycle()
fastUnicycle.speed = 999999
fastUnicycle.color = "blue"
fastUnicycle.electric = true
fastUnicycle.describe()

if fastUnicycle is Vehicle {
    print("fastUnicycle is a Vehicle")
}
