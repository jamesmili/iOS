import UIKit

var pizzaInInches: Int = 16 {
    // observed properties
    willSet {
        print(pizzaInInches) //16
        print(newValue) //8
        
    }
    
    didSet {
        if pizzaInInches >= 18{
            print("Invalid size specified, pizzaInInches set to 18.")
            pizzaInInches = 18
        }
        print(oldValue) //16
        print(pizzaInInches) //8
    }
}

pizzaInInches = 8
pizzaInInches = 33

var numberOfPeople: Int = 12
let slicesPerPerson: Int = 4

// getter
var numberOfSlices: Int {
    get {
        return pizzaInInches - 4
    }
    
    set {
        print("Number of slices has a new value which is \(newValue)")
    }
}

var numberOfPizza: Int{
    get{
        let numberOfPeopleFedPerPizza = numberOfSlices / slicesPerPerson
        return numberOfPeople / numberOfPeopleFedPerPizza
    }
    
    set {
        let totalSlices = numberOfSlices * newValue
        numberOfPeople = totalSlices / slicesPerPerson
    }
}

numberOfSlices = 12
print(numberOfSlices)
print(numberOfPizza)
numberOfPizza = 6
print(numberOfPeople)

var width: Float = 1.5
var height: Float = 2.3

var bucketsOfPaint: Int {
    get {
        let area = width * height
        let areaCoveredPerBucket: Float = 1.5
        let numberOfBuckets = area / areaCoveredPerBucket
        let roundedBuckets = ceilf(numberOfBuckets) //rounds up
        return Int(roundedBuckets)
    }
    
    set {
        let areaCanCover = Double(newValue) * 1.5
        print("this amount of paint can cover an area of \(areaCanCover)")
    }
}

print(bucketsOfPaint)
bucketsOfPaint = 4
