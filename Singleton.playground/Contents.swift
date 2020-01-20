import UIKit

class Car {
    var colour = "Red"
    
    // the value will be the same for all of our classes and objects
    static let singletonCar = Car()
}

let myCar = Car.singletonCar
myCar.colour = "blue"

let yourCar = Car.singletonCar
print(yourCar.colour)

class A {
    init(){
        Car.singletonCar.colour = "Brown"
    }
}

class B{
    init(){
        print(Car.singletonCar.colour)
    }
}

let a = A()
let b = B()
