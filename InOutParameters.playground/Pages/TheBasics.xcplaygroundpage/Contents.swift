/*:
 [< Previous](@previous)                    [Home](Introduction)                    [Next >](@next)
 ## The Basics
 - Callout(Topic): `inout` parameters are a way to pass a parameter to a function by reference rather than by value.
*/
import Foundation
// Create a function that will accept an Int as a parameter and double it
code(for: "The Problem") {
    func square(_ number: Int) {
//        number = number * number
    }
}

code(for: "Solution using Returned Value") {
    func square(_ number: Int) -> Int {
//        let squareNumber = number * number
//        return squareNumber
        number * number
    }
    var x = 5
    x = square(x)
    print(x)
}

code(for: "Solution using inout") {
    func square(_ number: inout Int) {
        number = number * number
    }
    
    var x = 5
//    square(&x)
    square(&x)
    print(x)
}
/*:
 [< Previous](@previous)                    [Home](Introduction)                    [Next >](@next)
*/
