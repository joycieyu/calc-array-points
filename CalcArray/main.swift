//
//  main.swift
//  CalcArray
//
//  Created by Joycie Yu on 10/12/17.
//  Copyright © 2017 Joycie Yu. All rights reserved.
//

import Foundation

func add (_ num1: Int, _ num2: Int) -> Int {
    return num1 + num2
}

func subtract (_ num1: Int, _ num2: Int) -> Int {
    return num1 - num2
}

func multiply (_ num1: Int, _ num2: Int) -> Int {
    return num1 * num2
}

func divide(_ num1: Int, _ num2: Int) -> Int {
    return num1 / num2
}

func simpleOps (_ num1: Int, _ num2: Int, _ operation: String) -> Int{
    switch operation {
    case "+", "add" :
        return add(num1, num2)
    case "-", "subtract" :
        return subtract(num1, num2)
    case "*", "multiply" :
        return multiply(num1, num2)
    case "/", "divide" :
        return divide(num1, num2)
    default:
        return -1
    }
}

func add (_ numArr : [Int]) -> Int {
    var result = 0
    for index in 0...(numArr.count - 1){
        result += numArr[index]
    }
    return result
}

func multiply (_ numArr : [Int]) -> Int {
    var result = 0
    for index in 0...(numArr.count - 1){
        result *= numArr[index]
    }
    return result
}

func count (_ numArr : [Int]) -> Int {
    return numArr.count - 1
}

func avg (_ numArr : [Int]) -> Int {
    var result = 0
    for index in 0...(numArr.count - 1){
        result += numArr[index]
    }
    return result/numArr.count
}

func arrOps (_ numArr: [Int], _ operation: String) -> Int {
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
        return -1
    }
}

func add (_ nums1: (x: Int, y: Int), _ nums2: (x: Int, y: Int)) -> (Int, Int) {
    return (nums1.x + nums2.x, nums1.y + nums2.y)
}

func subtract (_ nums1: (x: Int, y: Int), _ nums2: (x: Int, y: Int) ) -> (Int, Int) {
    return (nums1.x - nums2.x, nums1.y - nums2.y)
}

func add (_ nums1:[String: Int], _ nums2: [String: Int]) -> [String: Int] {
    var results : [String : Int] = [:]
    if (nums1["x"] != nil && nums2["x"] != nil && nums1["y"] != nil && nums2["y"] != nil) {
        results.updateValue(nums1["x"]! + nums2["x"]!, forKey:"x")
        results.updateValue(nums1["y"]! + nums2["y"]!, forKey:"y")
    }
    return results
}

func subtract (_ nums1:[String: Int], _ nums2: [String: Int]) -> [String: Int] {
    var results : [String : Int] = [:]
    if (nums1["x"] != nil && nums2["x"] != nil && nums1["y"] != nil && nums2["y"] != nil) {
        results.updateValue(nums1["x"]! - nums2["x"]!, forKey:"x")
        results.updateValue(nums1["y"]! - nums2["y"]!, forKey:"y")
    }
    return results
}

