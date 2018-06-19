//
//  QueueUsingStacks.swift
//  
import Foundation
var stack1 = [Int](); var stack2 = [Int]()
func queue(_ q: Int, _ e: Int?){
    switch q {
    case 1:
        stack1.append(e!)
        break
        
    case 2:
        if !stack2.isEmpty{
            stack2.popLast()
        }
        else{
            while !stack1.isEmpty{
                stack2.append(stack1.popLast()!)
            }
            stack2.popLast()
        }
        break
        
    case 3:
        if !stack2.isEmpty{
            print(stack2.last!)
        }
        else{
            while !stack1.isEmpty{
                stack2.append(stack1.popLast()!)
            }
            print(stack2.last!)
        }
        break
        
    default:
        print("default")
        break
    }
}

guard let t = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
    else { fatalError("Bad input") }

for tItr in 1...t {
    guard let expression = readLine() else { fatalError("Bad input") }
    let arr = expression.split(separator: " ")
    if arr.count == 2 {
        queue(Int(arr[0])!, Int(arr[1])!)
    }
    else{
        queue(Int(arr[0])!, 0)
    }
}

