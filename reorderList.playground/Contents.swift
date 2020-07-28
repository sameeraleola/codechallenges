import UIKit

//func reorderList(list: [Int], reorderBy: Int) -> [Int] {
//
//}

/*
 CodeSignal Challenge
 Shift the elements of the array reorderBy times
 */

var list = [1, 2, 3, 4, 5, 6, 7, 8, 9]

//[9, 8, 7, 1, 2, 3, 4, 5, 6]

let reorderBy = 3
let listSize = list.count
//print(listSize)
var newList : Array<Int> = Array(repeating: 0, count: listSize)

for e in list {
    // Get the index of e
    let eIndex = list.firstIndex(of: e)!
    var newIndex = eIndex+reorderBy
    if newIndex > listSize - 1 {
        newIndex = (listSize - eIndex) - 1
    }
//print("e = \(e), eIndex = \(eIndex), newIndex = \(newIndex), adjustedIndex = \(newIndex)")
    newList[newIndex] = e
}
print(list)
print(newList)



