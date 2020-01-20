//
//  main.swift
//  Protocols Demo
//
//  Created by James Militante on 2020-01-07.
//  Copyright © 2020 James Militante. All rights reserved.
//

protocol CanFly{
    func fly()
}

class Bird {
    var isFemale = true
    
    func layEgg(){
        if isFemale{
            print("bird makes a new bird in a shell")
        }
    }
}


class Eagle: Bird, CanFly{
    func fly() {
        print("eagle flaps its wings and lifts off into the sky")
    }
    
    func soar(){
        print("eagle glides in the air using air currents")
    }
}

class Penguin: Bird{
    func swim(){
        print("penguin paddles through the water")
    }
}

struct FlyingMuseum {
    func flyingDemo(flyingObject: CanFly){
        flyingObject.fly()
    }
}

struct Airplane: CanFly{
    func fly(){
        print("airplane uses its engine to lift off into the air")
    }
}

let myEagle = Eagle()
myEagle.fly()
//myEagle.layEgg()
//myEagle.soar()

let myPenguin = Penguin()
//myPenguin.layEgg()
//myPenguin.swim()
//myPenguin.fly()

let myPlane = Airplane()

let museum = FlyingMuseum()
museum.flyingDemo(flyingObject: myPlane)
