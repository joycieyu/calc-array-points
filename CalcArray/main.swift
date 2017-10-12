//
//  main.swift
//  CalcArray
//
//  Created by Joycie Yu on 10/12/17.
//  Copyright © 2017 Joycie Yu. All rights reserved.
//

import Foundation

func add (_ num1: Double, _ num2: Double) -> Double {
    return num1 + num2
}

func subtract (_ num1: Double, _ num2: Double) -> Double {
    return num1 - num2
}

func multiply (_ num1: Double, _ num2: Double) -> Double {
    return num1 * num2
}

func divide (_ num1: Double, _ num2: Double) -> Double {
    return num1 / num2
}

func mod (_ num1: Double, _ num2: Double) -> Double {
    return num1.truncatingRemainder(dividingBy: num2)
}

func simpleOps (_ num1: Double, _ num2: Double, _ operation: String) -> Double{
    switch operation {
    case "+", "add" :
        return add(num1, num2)
    case "-", "subtract" :
        return subtract(num1, num2)
    case "*", "multiply" :
        return multiply(num1, num2)
    case "/", "divide" :
        return divide(num1, num2)
    case "%", "mod" :
        return mod(num1, num2)
    default:
        return -1.0
    }
}

func add (_ numArr : [Double]) -> Double{
    var result = 0.0
    for index in 0...(numArr.count - 1){
        result += Double(numArr[index])
    }
    return result
}

func multiply (_ numArr: [Double]) -> Double {
    var result = 0.0
    for index in 0...(numArr.count - 1){
        result *= Double(numArr[index])
    }
    return result
}

func count (_ numArr: [Double]) -> Double {
    return Double(numArr.count - 1)
}

func avg (_ numArr: [Double]) -> Double {
    var result = 0.0
    for index in 0...(numArr.count - 1){
        result += Double(numArr[index])
    }
    return result/Double(numArr.count)
}

func arrOps (_ numArr: [Double], _ operation: String) -> Double {
    switch operation {
    case "+", "add" :
        return add(numArr)
    case "*", "multiply" :
        return multiply(numArr)
    case "count" :
        return count(numArr)
    case "avg" :
        return count(numArr)
    default :
        return -1.0
    }
}

func add (_ nums1: (x: Double, y: Double), _ nums2: (x: Double, y: Double) ) -> (Double, Double) {
    return (nums1.x + nums2.x, nums1.y + nums2.y)
}

func subtract (_ nums1: (x: Double, y: Double), _ nums2: (x: Double, y: Double) ) -> (Double, Double) {
    return (nums1.x - nums2.x, nums1.y - nums2.y)
}

func add (_ nums1:[String: Double], _ nums2: [String: Double]) -> [String: Double] {
    var results : [String : Double] = [:]
    results.updateValue(nums1["x"]! + nums2["x"]!, forKey:"x")
    results.updateValue(nums1["y"]! + nums2["y"]!, forKey:"y")
    return results
}


// simple calc

print("Enter an expression separated by returns:")
var result = 0.0
var firstRes = readLine(strippingNewline: true)!
let resArr = firstRes.split(separator:" ")
let length = resArr.count

switch length {
case 1 :
    let num1 = Double(firstRes)
    let operation: String = readLine(strippingNewline: true)!
    let secondRes = readLine(strippingNewline: true)!
    let num2 = Double(secondRes)
    
    switch operation {
    case "+" :
        result = num1! + num2!
    case "-" :
        result = num1! - num2!
    case "/" :
        result = num1! / num2!
    case "*" :
        result = num1! * num2!
    case "%" :
        result = num1!.truncatingRemainder(dividingBy: num2!)
    default:
        print ("Sorry, cannot compute")
    }
default:
    let operation = resArr.last!
    switch operation {
    case "count":
        result = Double(resArr.count - 1)
        
    case "avg":
        for index in 0...(resArr.count - 2){
            result += Double(resArr[index])!
        }
        result /= Double(resArr.count - 1)
    case "fact":
        var factSum = 1.0
        let stopVal : Int = Int(resArr[0])!
        if (stopVal > 0) {
            for index in 1...stopVal {
                factSum = factSum * Double(index)
            }
        } else {
            for index in stopVal...(-1) {
                factSum = factSum * Double(index)
            }
        }
        result = factSum;
        
    default :
        print ("Sorry, cannot compute")
    }
}
print("Result: \(result)")
