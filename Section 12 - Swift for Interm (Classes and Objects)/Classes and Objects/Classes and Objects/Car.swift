//
//  Car.swift
//  Classes and Objects
//
//  Created by Yuriy Oksamytny on 19/09/2019.
//  Copyright © 2019 Yuriy Oksamytny. All rights reserved.
//

import Foundation

enum CarType {
    case Sedan
    case Coupe
    case Hathcback
}


class Car {
    
    var colour = "Black"
    var numberOfSeats: Int = 5
    var typeOfCar : CarType = .Coupe
    
    init() {
        
    }
    
    convenience init (cusomerChosenColour: String) {
        self.init()
        colour = cusomerChosenColour
    }
    
    func drive() {
        print("Thee car is moving")
    }
    
    
}
