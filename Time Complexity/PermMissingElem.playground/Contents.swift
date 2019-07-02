import UIKit

var array = [2, 3, 1, 5, 6]

public func solution(_ A : inout [Int]) -> Int {
    let count = A.count + 1
    
    let countSum = (1...count).reduce(0, +)
    let arraySum = A.reduce(0, +)
    
    let missingElement = countSum - arraySum
    
    return missingElement
}

solution(&array)
