import UIKit

func merge_packages(items: [Int], limit: Int) -> [Int] {
    var weights:[Int] = []  // O(1)
    var packageWeight = 999
    
    if items.count == 1 {
        return weights
    }
     //                             O(n)
    if items.count == 2 && items.reduce(0, +) == limit {
        weights.append(1)
        weights.append(0)
        return weights
    }
    // 6 x O(n) =
    for i in items { // O(n)
        let j = limit - i
        if items.contains(j)  { // O(n)
            let indexOfj = items.firstIndex(of: j) // O(n)
            let indexOfi = items.firstIndex(of: i) // O(n)
            let newPackageWeight =  indexOfi! + indexOfj!
            if newPackageWeight < packageWeight {
                weights = []
                weights.append(indexOfi!)
                weights.append(indexOfj!)
                weights.sort(by: >) // O(n)
                packageWeight = newPackageWeight
            }
            continue
        }
    }
    
    return weights
}

//print(merge_packages(items: [4, 4], limit: 8))
//print(merge_packages(items: [4, 6, 10, 15, 16], limit: 21))
print(merge_packages(items: [1, 3, 15, 5, 7, 16, 9, 5, 22], limit: 10))

/*
 Given a package with a weight limit limit and an array of integers items of where each integer represents the weight of an item, implement a function merge_packages that finds the first two items in the items array whose sum of weights equals the given weight limit limit.

 Your function should return a pair [i, j] of the indices of the item weights, ordered such that i > j. If such a pair doesn’t exist, return an empty array.

 Examples:

 Input: items = [4, 6, 10, 15, 16], limit = 21
 Output: [3, 1]
 Explanation: The weight of the items at indices 3 and 1 sum up to the specified limit.
 [execution time limit] 20 seconds (swift)

 [input] array.integer items

 A list of item weights.

 [input] integer limit

 The weight limit we're aiming for by merging two packages.

 [output] array.integer
 */

/*
 items: [1, 2, 3]
 limit: 1
 Expected Output: []
 
 items: [9]
 limit: 9
 Expected Output: []
 
 items: [4, 6, 10, 15, 16]
 limit: 21
 Expected Output:
 [3, 1]
 
 Input:
 items: [4, 4]
 limit: 8
 Expected Output: [1, 0]
 
 Input:
 items: [12, 6, 7, 14, 19, 3, 0, 25, 40]
 limit: 7
 Expected Output: [6, 2]
 
 Input:
 items: [1, 3, 15, 5, 7, 16, 9, 5, 22]
 limit: 10
 Expected Output: [4, 1]
 */




