//
//  main.swift
//  Classes and Objects
//
//  Created by Yuriy Oksamytny on 19/09/2019.
//  Copyright © 2019 Yuriy Oksamytny. All rights reserved.
//

import Foundation

let myCar = Car()
let someRichGuysCar = SelfDrivingCar(cusomerChosenColour: "Gold")

print(myCar.colour)
print(myCar.numberOfSeats)
print(myCar.typeOfCar)

print(someRichGuysCar.colour)

myCar.drive()
someRichGuysCar.drive()
