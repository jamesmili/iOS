import UIKit

let defaults = UserDefaults.standard

defaults.set(0.24, forKey: "Volume")
defaults.set(true, forKey: "MusicOn")
defaults.set("James", forKey: "PlayerName")
defaults.set(Date(), forKey: "AppLastOpened")
let array = [1,2,3]
defaults.set(array, forKey: "myArray")

let dictionary = ["name": "James"]
defaults.set(dictionary, forKey: "myDictionary")

let volume = defaults.float(forKey: "Volume")
let appLastOpen = defaults.object(forKey: "AppLastOpened")
let myArray = defaults.array(forKey: "myArray") as! [Int]
let myDictionary = defaults.dictionary(forKey: "myDictionary")
