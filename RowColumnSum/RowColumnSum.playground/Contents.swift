import UIKit

// 행렬의 덧셈은 행과 열의 크기가 같은 두 행렬의 같은 행, 같은 열의 값을 서로 더한 결과가 됩니다. 2개의 행렬 arr1과 arr2를 입력받아, 행렬 덧셈의 결과를 반환하는 함수, solution을 완성해주세요.
// arr1             arr2             return
// [[1,2],[2,3]]    [[3,4],[5,6]]    [[4,6],[7,9]]
// [[1],[2]]        [[3],[4]]        [[4],[6]]

func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    var sumArray = [[Int]]()
    var sum = 0
    
    for i in 0..<arr1.count {
        var tempArray = [Int]()
        
        for j in 0..<arr1[i].count {
            sum = arr1[i][j] + arr2[i][j]
            tempArray.append(sum)
        }
        sumArray.append(tempArray)
//        tempArray.removeAll()
    }
    return sumArray
}

solution([[1,2],[2,3]], [[3,4],[5,6]])
solution([[1],[2]], [[3],[4]])
