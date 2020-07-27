import UIKit

func foldArray(_ arr: [Int], times: Int) -> [Int] {
    var foldedArray: [Int] = []
    var array = arr
    var t = times

    if arr.count == 1 {
        foldedArray.append(contentsOf: arr)
        return foldedArray
    }
    
    while t > 0 {
        while !array.isEmpty {
            
            if array.count == 1 {
                foldedArray.append(contentsOf: array)
                break
            }
            
            foldedArray.append(array.first! + array.last!)
            array.removeFirst()
            array.removeLast()
        }
        t -= 1
        if t > 0 {
            array = foldedArray
            foldedArray = []
        }
    }
    return foldedArray
}

//print(foldArray([1, 2, 3, 4, 5], times: 1))
//print(foldArray([1, 2, 3, 4, 5], times: 2))
print(foldArray([2], times: 1))
//print(foldArray([74, 76, 81, 92, 104], times: 1))









