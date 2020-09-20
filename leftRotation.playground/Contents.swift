import UIKit

/*
 Hacker Rank - Left Rotation
 https://www.hackerrank.com/challenges/array-left-rotation/problem
 
 A left rotation operation on an array of size  shifts each of the array's elements  unit to the left. Given an integer, , rotate the array that many steps left and return the result.
 */

func rotLeft(a: [Int], d: Int) -> [Int] {
    let arrLength = a.count - 1
    var newArr = Array(repeating : -99, count : a.count)
    var newIndex = -99

    for pos in 0...arrLength {
        newIndex = pos-d
        if newIndex < 0 {
            newArr[a.count + newIndex] = a[pos]
        } else {
            newArr[newIndex] = a[pos]
        }
    }

    return(newArr)
}

print(rotLeft(a: [1, 2, 3, 4, 5], d: 4)) // [5, 1, 2, 3, 4]
print(rotLeft(a: [41, 73, 89, 7, 10, 1, 59, 58, 84, 77, 77, 97, 58, 1, 86, 58, 26, 10, 86, 51], d: 10)) // [77, 97, 58, 1, 86, 58, 26, 10, 86, 51, 41, 73, 89, 7, 10, 1, 59, 58, 84, 77]
print(rotLeft(a: [33, 47, 70, 37, 8, 53, 13, 93, 71, 72, 51, 100, 60, 87, 97], d: 13)) // [87, 97, 33, 47, 70, 37, 8, 53, 13, 93, 71, 72, 51, 100, 60]



