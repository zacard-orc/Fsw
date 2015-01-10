//
//  main.swift
//  sw_1
//
//  Created by z30 on 15-1-9.
//  Copyright (c) 2015年 z30. All rights reserved.
//

import Foundation

println("Hello, World!")


var a=1;
let b=3;

let appleSum="i have \(a+b) apples"

println(appleSum)


let list_a=[1,2,3,4,5]

var i=0;

for score in list_a
{
    if score > 3
    {
        println(33)
    } else
    {
        println(44)
    }
}

var optionalName: String? = "John Appleseed"
optionalName = nil
var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello, \(name)"
    println(greeting)
} else
{
    greeting = "Hello,2"
    println(greeting)
}


let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, -1],
]

var largest = 0
for (kind, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
        }
    }
}
println(largest)
