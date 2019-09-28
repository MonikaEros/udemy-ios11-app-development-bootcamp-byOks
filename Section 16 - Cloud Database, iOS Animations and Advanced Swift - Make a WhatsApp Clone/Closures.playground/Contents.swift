import UIKit

var str = "Hello, playground"

func calculator1 (n1: Int, n2: Int, operation: (Int, Int) -> Int) -> Int {
    
    return operation(n1,n2)
}

func add (no1: Int, no2: Int) -> Int {
    return no1 + no2
}

func multiply (no1: Int, no2: Int) -> Int {
    return no1 * no2
}

calculator1(n1: 2, n2: 3, operation: add)
calculator1(n1: 2, n2: 3, operation: multiply)


func calculator (n1: Int, n2: Int, operation: (Int, Int) -> Int) -> Int {
    
    return operation(n1,n2)
}

calculator(n1: 2, n2: 3, operation: {   (no1: Int, no2: Int) -> Int in
    return no1 + no2
})

calculator(n1: 2, n2: 3, operation: { (no1, no2)  in
    return no1 + no2
})

calculator(n1: 2, n2: 3, operation: { (no1, no2)  in
    no1 + no2
})

calculator(n1: 2, n2: 3, operation: { (no1, no2)  in  no1 + no2 })

let result = calculator(n1: 2, n2: 3, operation: {$0 * $1})
let result1 = calculator(n1: 2, n2: 3) {$0 * $1}


let array = [6,2,3,9,4,1]

print(array.map{$0 + 1}) // [7,3,4,10,5,2]

let newArray = array.map{"\($0)"}
print(newArray) // ["6","2","3","9","4","1"]


class Firebase {
    func createUser(username: String, password: String, completion: (Bool, Int) -> Void) {
    
        //does something time consuming
        
        var isSuccess = true
        var userID = 123
        
        completion(isSuccess, userID)
        
    }
}

class MyApp {
    
    func registerButtonPressed() {
        
        let firebase = Firebase()
        
        firebase.createUser(username: "Angela", password: "123456", completion: completed)
        
    }
    
    func  completed(isSuccess : Bool, userID: Int)  {
        print("Registration is successful: \(isSuccess)")
        print("userID is: \(userID)")
    }
}


let myApp = MyApp()

myApp.registerButtonPressed()


class MyAppV2 {
    
    func registerButtonPressed() {
        
        let firebase = Firebase()
        
        firebase.createUser(username: "Angela", password: "123456") {
            (isSuccess : Bool, userID: Int) in
            
            print("Registration is successful: \(isSuccess)")
            print("userID is: \(userID)")
        }
        
    }
    
      
}
