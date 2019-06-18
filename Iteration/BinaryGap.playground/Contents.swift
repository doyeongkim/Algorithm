import UIKit

// 이진수 구하기
// public func convertToBinary(_ N : Int) {
//     let str = String(N, radix: 2)  // binary base
//     print(str)
// }

// let num1 = 32
// convertToBinary(num1)

public func solution(_ N : Int) -> Int {
    
    let binaryStr = String(N, radix: 2)

    var count = 0
    var currentCount = 0
    var maxLength = 0
    
    for i in binaryStr {
        
        if i == "1" {
            
            currentCount = count
            
            if count >= 1 {
                count = 0
                maxLength = currentCount > maxLength ? currentCount : maxLength
            }
        } else {
            count += 1
        }
    }
    print(binaryStr)
    return maxLength
}

let num2 = (1...2147483647).randomElement() ?? 0
solution(num2)


