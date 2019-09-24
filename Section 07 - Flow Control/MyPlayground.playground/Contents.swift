import UIKit

func BMI(mass: Double, height: Double) {
    var bmi : Double
    bmi = mass
    bmi /= pow(height, 2)
    
    if bmi > 25 {
        print("Sorry, bro, but you are over of normal weight")
    } else if bmi <= 25 && bmi > 18.5 {
        print("Congrats! You are of normal weight")
    } else {
        print("Sorry, bro :( You need to visit McDonalds, because you are underweight")
    }
    
    
}

BMI(mass: 69, height: 1.86)


func beerSongForThisManyBottlesOfBeer(_ totalNumbersOfBottles : Int) -> String {
    var lyrics: String = ""
    
    for number in (1...totalNumbersOfBottles).reversed() {
        let newLine: String = "\n\(number) bottles of beer on the wall, \(number) bottles of beer. \nTake one down and pass it around, \(number - 1) bottles of beer on the wall.\n"
        
        lyrics += newLine
    }
    
    return lyrics
}

print(beerSongForThisManyBottlesOfBeer(5))

