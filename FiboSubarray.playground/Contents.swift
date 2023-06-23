import UIKit

func getFibonacciSubarray(startingNumber: Int, count: Int) -> [Int] {
    var fibonacciArray: [Int] = []
    var a = 0
    var b = 1

    for _ in 0..<count {
        let temp = a
        a = b
        b = temp + b
        fibonacciArray.append(a)
    }

    guard let startingIndex = fibonacciArray.firstIndex(of: startingNumber) else {
        return []
    }

    return Array(fibonacciArray[startingIndex..<startingIndex+count])
}

let inputNumber = 1
let count = 10

let fibonacciSubarray = getFibonacciSubarray(startingNumber: inputNumber, count: count)
print(fibonacciSubarray)
