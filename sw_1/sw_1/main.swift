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


func greet(name:String ,day:String ) -> String{
    return "Hello \(name),today 我 is \(day)"
}
println(greet("Bob","Tuesday"))

func getGas() ->(Double,Double,Double){
    return (1.1,2.2,3.3)
}
println(getGas())

func sumff(numbers:Int...)-> Int{
    
    var sum=0;
    for i in numbers{
        sum+=i
    }
    return sum
}
println(sumff(1,2,3))
println(sumff(3,4,5))


func makeII() -> (Double->String){
    func addOne(number:Double)->String{
        return "abcd"
    }
    return addOne
}

var iii=makeII()
println(iii(7))


func hasAnyMatches(list: [Int], ccc: Int -> Bool) -> Bool {
    for item in list {
        if ccc(item) {
            return true
        }
    }
    return false
}
func lessThanTen(number: Int) -> Bool {
    return number < 10
}
var numbers = [20, 19, 7, 12]
println(hasAnyMatches(numbers, lessThanTen))


numbers.map({
    (number:Int) -> Int in
    let res=3*number
    return res;
    })


//sort([1, 5, 3, 12, 2]) { $0 > $1 }

enum Rank:Int{
    case Ace=1
    case Two,Three
    func fff()->String{
        switch self {
        case .Ace:
            return "ace1"
        case .Two:
            return "two2"
        default:
            return "333"
        }
    }
}


println("\(Rank.Ace)+1")
println(Rank.Two)
println(Rank.Three)

enum ServerResponse {
    case Result(String, String)
    case Error(String)
}

//let success = ServerResponse.Result("6:00 am", "8:09 pm")
let success = ServerResponse.Error(("world"))
let failure = ServerResponse.Error("Out of cheese.")
println(success)


switch success {
case let .Result(sunrise, sunset):
    let serverResponse = "Sunrise is at \(sunrise) and sunset is at \(sunset)."
    println(serverResponse)
case let .Error(error):
    let serverResponse = "Failure...  \(error)"
    println(serverResponse)
}
//println(success)


protocol ExampleProtocol {
    var simple: String { get }
    mutating func adjust()
}


extension Int: ExampleProtocol{
    var simple: String{
        return "The number \(self)"
    }
    mutating func adjust(){
        self+=42
    }
}

println(7.simple)


func repeat<ItemType>(item: ItemType,times: Int) -> [ItemType]
{
    var res=[ItemType]()
    for i in 0..<times
    {
        res+=item
    }
    return res
}

println(repeat(3.3,4))
println(repeat("abb",4))

enum OptionalValue<T> {
    case None
    case Some(T)
}

var possibleInteger: OptionalValue<Int> = .None
possibleInteger = .Some(100)
println(possibleInteger)


func anyCommonElements <T, U where T: Sequence, U: Sequence, T.GeneratorType.Element: Equatable, T.GeneratorType.Element == U.GeneratorType.Element> (lhs: T, rhs: U) -> Bool {
    for lhsItem in lhs {
        for rhsItem in rhs {
            if lhsItem == rhsItem {
                return true
            }
        }
    }
    return false
}

println(anyCommonElements([1, 2, 3], [4]))

