import UIKit

// 자연수 n을 뒤집어 각 자리 숫자를 원소로 가지는 배열 형태로 리턴해주세요.
//예를들어 n이 12345이면 [5,4,3,2,1]을 리턴합니다.

func solution(_ n: Int64) -> [Int] {
    var numArray = [Int]()

    let numString = String(n)
    var newNum = n

    for _ in 0..<numString.count {
        let lastNum = newNum % 10
        newNum = newNum / 10
        numArray.append(Int(lastNum))
    }

    return numArray
}

solution(12345)
