//
//  main.swift
//  cliplay
//
//  Created by Robert Kleniewski on 12/7/18.
//  Copyright © 2018 Robert Kleniewski. All rights reserved.
//

import Foundation

print("Swift playground!")

print("")
print("### Test 1 - arrays")
print("source: https://developer.apple.com/documentation/swift/array")
var myArray = [31, 22, 63, 25, 68]
print(myArray)
var myEmptyArray: [Int] = []
print(myEmptyArray)
print(myEmptyArray.count)
print(myEmptyArray.capacity)
var array3: [Int]
array3 = Array()
array3.append(3)
array3.append(2)
array3.append(1)
print(array3)
array3.sort()
print(array3)
myArray.append(contentsOf: array3)
print(myArray)
// forth way to init array
var array4 = [Double]()
array4 = [1.34, 2.0, 2.1, 3.4]
print(array4)
array4.remove(at: 2)





print("")
print("### Test 2 - dictonaries")
print("source: https://developer.apple.com/documentation/swift/dictonary")
var responseMessages = [200: "OK",
                        403: "Access forbidden",
                        404: "File not found",
                        500: "Internal server error"]
print(responseMessages)
print(responseMessages[200] ?? "not existing")
var myDict: [String:Int] = [:] // do not forget ":"
print(myDict.count) // will print 0
myDict["one"] = 1
myDict["two"] = 2
print(myDict)
myDict.removeAll()
print(myDict)
var dict2: [Int:Decimal]
dict2 = Dictionary()
dict2[1] = 3.14
print(dict2[1]!) // will crush is unexisting key provided




print("")
print("### Test 3 - for loops")
let array5: [Double] = [2, 4, 5, 6, 7]
for (index, value) in array4.enumerated() {
    print("index=\(index) value=\(value)")
}

var dict3: [String:Float] = ["one": 2.3]
dict3["two"] = 123.2
for (index2, value2) in dict3.enumerated() {
    print("index=\(index2) value=\(value2)")
}
// it will print
/*
 index=0 value=(key: "two", value: 123.2)
 index=1 value=(key: "one", value: 2.3)
*/

var dict4: [String:Float] = ["one": 2.3]
dict4["two"] = 123.2
for (index3, value3) in dict4 {
    print("index=\(index3) value=\(value3)")
}
// it will print
/*
 index=two value=123.2
 index=one value=2.3
 */


print("")
print("### Test 4 - classes")

class MyClass {
    var isAlive: Bool = true
    var strength: Int = 10
    func kill() {
        isAlive = false
    }
    func isStrong() -> Bool {
        if strength > 15 {
            return true
        }
        else {
            return false
        }
    }
}

var ghost = MyClass()
print(ghost.isAlive)
ghost.strength = 20
print(ghost.strength)
ghost.kill()
print(ghost.isAlive)
print(ghost.isStrong())


print("")
print("### Test 5 - optionals")
var number: Int? // this is the optional

print(number ?? "the number is nil")
