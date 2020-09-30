import UIKit

func containsCloseNums(nums: [Int], k: Int) -> Bool {
    var close = false
    
    var numsDict : [Int : Int] = [:]
    
    nums.forEach {
        if let cnt = numsDict.updateValue(1, forKey: $0) {
            numsDict[$0]! += 1
            print(numsDict)
        }
        
    }
    
    
    return close
}

print(containsCloseNums(nums : [0, 1, 2, 3, 5, 2], k : 3))
