//
//  SelfDrivingCar.swift
//  Classes and Objects
//
//  Created by Yuriy Oksamytny on 19/09/2019.
//  Copyright © 2019 Yuriy Oksamytny. All rights reserved.
//

import Foundation

class SelfDrivingCar : Car {
    
    var destination : String?
    
    override func drive() {
        super.drive()
        
        if let userSetDestination = destination {
        print("driving towards " + userSetDestination)
        }
    }
}
