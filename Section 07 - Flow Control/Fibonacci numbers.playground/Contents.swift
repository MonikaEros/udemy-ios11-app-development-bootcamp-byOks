import UIKit

func fibonacci(untill number : Int) {
    print(0)
    print(1)
    
    var num1 = 0
    var num2 = 1
    
    for _ in 0...number {
        let num = num1 + num2
        print(num)
        
        num1 = num2
        num2 = num
    }
}

fibonacci(untill : 6)
