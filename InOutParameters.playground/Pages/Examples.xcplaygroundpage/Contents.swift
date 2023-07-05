/*:
 [< Previous](@previous)                    [Home](Introduction)                    [Next >](@next)
 ## Practical Examples
 - Callout(Topic): Some practical use cases.
*/
import Foundation


code(for: "Increment Score Example") {
    // Create a function that will increment a score in place
    func incrementScore(_ score: inout Int) {
        score += 1
    }
    
    var score = 0
    incrementScore(&score)
    print(score)

}

code(for: "Reverse Name") {
    // Create a function that will reverse a name like "Lynch, Stewart" in place and return "Stewart Lynch"
    func reverseName(_ name: inout String) {
//        var names = name.components(separatedBy: ",")
//        names = names.map {$0.trimmingCharacters(in: .whitespacesAndNewlines)}
//        names = names.reversed()
//        name = names.joined(separator: " ")
        name = name.components(separatedBy: ",")
            .map {$0.trimmingCharacters(in: .whitespacesAndNewlines)}
            .reversed()
            .joined(separator: " ")
    }
 
    var name = "Lynch, Stewart"
    reverseName(&name)
    print(name)
}

code(for: "Multiple Function Parameters") {
    // Create a function that will add a new member to a family which is an array of strings
    func addMember(name: String, family: inout [String]) {
        family.append(name)
    }
    var lynchFamily = [String]()
    addMember(name: "Stewart", family: &lynchFamily)
    addMember(name: "Emily", family: &lynchFamily)
    addMember(name: "Aidan", family: &lynchFamily)
    
    for member in lynchFamily {
        print(member)
    }
}

/*:
 [< Previous](@previous)                    [Home](Introduction)                    [Next >](@next)
*/
