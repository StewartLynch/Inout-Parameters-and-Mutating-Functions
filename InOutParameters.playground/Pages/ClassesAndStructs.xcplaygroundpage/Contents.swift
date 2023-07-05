/*:
 [< Previous](@previous)                    [Home](Introduction)
 ## Classes and Structs
 - Callout(Topic): Classes are `rerefence` types and structs are `value` types.
*/
import Foundation

code(for: "Class Family Example") {
    class Family {
        var members: [String] = []
    }
    func addMembers(name: String, family: Family) {
        family.members.append(name)
    }
    let lynchFamily = Family()
    addMembers(name: "Stewart", family: lynchFamily)
    addMembers(name: "Emily", family: lynchFamily)
    addMembers(name: "Aidan", family: lynchFamily)
    for member in lynchFamily.members {
        print(member)
    }
}

code(for: "Struct Family Example") {
    struct Family {
        var members: [String] = []
    }
    func addMembers(name: String, family: inout Family) {
        family.members.append(name)
    }
    var lynchFamily = Family()
    addMembers(name: "Stewart", family: &lynchFamily)
    addMembers(name: "Emily", family: &lynchFamily)
    addMembers(name: "Aidan", family: &lynchFamily)
    for member in lynchFamily.members {
        print(member)
    }
}

code(for: "Class Instance Function") {
    class Family {
        var members: [String] = []
        func addMembers(name: String) {
            members.append(name)
        }
    }
    let lynchFamily = Family()
    lynchFamily.addMembers(name: "Stewart")
    lynchFamily.addMembers(name: "Emily")
    lynchFamily.addMembers(name: "Aidan")
    for member in lynchFamily.members {
        print(member)
    }
}

code(for: "Struct Instance Function") {
    struct Family {
        var members: [String] = []
        mutating func addMembers(name: String) {
            members.append(name)
        }
    }
    var lynchFamily = Family()
    lynchFamily.addMembers(name: "Stewart")
    lynchFamily.addMembers(name: "Emily")
    lynchFamily.addMembers(name: "Aidan")
    for member in lynchFamily.members {
        print(member)
    }
}

/*:
 [< Previous](@previous)                    [Home](Introduction)
*/
