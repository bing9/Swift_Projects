//import Cocoa
//import Darwin
//import Foundation
//
//let x = "example"
//print(x)
//
//let y = /* example s */
//"""
//a
//day
//in
//"""
//print(y)
//
//let c = Decimal(95)
//
//var f = c * 9/5 + 32
//print("Celcius \(c)°C is \(f)°F")

// Check Point 2
//var input: [String] = []
//var output: Set<String> = Set()
//
//func checkpoint2 (x : [String]) -> Set<String> {
//    print(x)
//    return Set(x)
//}
//
//output = checkpoint2(x: ["a", "a", "b", "c"])

//Check Point 3
// Fiz buzz

//for i in 1...100 {
//    if (i%3==0 && i%5 != 0) {
//        print("fizz")
//    } else if( i%3 != 0 && i%5 == 0) {
//            print("buzz")
//        } else if (i%3==0 && i%5==0) {
//                print("fiz buzz")
//            }
//    else {
//        print(i)
//    }
//        }
//

//compare two string if they contains same characters

func checkSameChars(s1: String, s2: String) -> Bool {
    return s1.sorted() == s2.sorted()
}

checkSameChars(s1: "bcd", s2: "cbd")
checkSameChars(s1: "bad", s2: "cbd")
