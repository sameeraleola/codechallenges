import UIKit

/*
 Search Insert Position
 https://leetcode.com/problems/search-insert-position/
 Given a sorted array and a target value, return the index if the target is found. If not, return the index where it would be if it were inserted in order.
 */
func searchInsert(_ nums: [Int], _ target: Int) -> Int {
    guard let index = nums.firstIndex(of: target) else {
       let insertPosition = nums.firstIndex(where: { $0 > target } )
        return insertPosition ?? nums.count
    }
    return index
}
print(searchInsert( [1,3,5,6], 5) ) // 2
print(searchInsert( [1,3,5,6], 2) ) // 1
print(searchInsert( [1,3,5,6], 7) ) // 4
print(searchInsert( [1,3,5,6], 0) ) // 0
