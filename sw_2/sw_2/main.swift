//
//  main.swift
//  sw_2
//
//  Created by z30 on 15-1-10.
//  Copyright (c) 2015年 z30. All rights reserved.
//

import Foundation

println("Hello, World!")

let possibleString: String? = "An optional string."
println(possibleString)

let assumedString: String! = "An implicitly unwrapped optional string."
println(assumedString)


let age = -3
assert(age  < 0,"AAAA")

println("333333");

let dogString = "Dog!🐶"
println(dogString)

for cc8 in dogString.utf8 {
    print("\(cc8) ")
}
print("\n")

for cc16 in dogString.utf16{
    print("\(cc16) ")
}
print("\n")

for ccU in dogString.unicodeScalars{
    print("\(ccU.value  ) ")
}


var threeDoubles = [Double](count: 3, repeatedValue:0.0)
println("\n\(threeDoubles)")

let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]

func backwards(s1: String, s2: String) -> Bool {
    return s1 > s2
}



