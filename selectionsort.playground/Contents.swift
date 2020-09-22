import UIKit

// Selection sort
var numbers = [2, 6, 7, 19, 11, 45, 99, 23, 56, 78, 9]

print("Array before sorting:\n\(numbers)")

var minIndex = 0

for i in 0..<numbers.count {
    minIndex = i
    
    for j in (i+1)..<numbers.count {
        if (numbers[j] < numbers[minIndex]) {
            minIndex = j
        }
        // Swap the values (manually)
//        let temp = numbers[i]
//        numbers[i] = numbers[minIndex]
//        numbers[minIndex] = temp
        
        // Swap the values (using built in function)
        numbers.swapAt(i, minIndex)
    }
}

print("Array after sorting:\n\(numbers)")

