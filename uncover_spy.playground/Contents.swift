import UIKit

/*
CodeSignal Code Challenge: uncover_spy

 */

func uncover_spy(n : Int , people : [[Int]]) -> Int {
    var everyone : Set<Int> = []
    var truster: Set<Int> = []
    
    // If we don't have enough compares we won't have enough info
    if people.count < n {
        return -1
    }
    
    let trustCount = people.count
    
    // Get all of the people
    for num in 0 ..< trustCount {
        everyone.insert(people[num].first!)
        everyone.insert(people[num].last!)
        truster.insert(people[num].first!)
    }
    
    let _ = everyone.subtract(truster)
    let theSpy = everyone.popFirst() ?? -1

    return theSpy
}

print(uncover_spy(n: 3, people:[[1, 2], [2, 3]])) // -1
//print(uncover_spy(n: 3, people:[[1, 3], [2, 3], [3, 1]]))
//print(uncover_spy(n: 4, people: [[1, 3],[1, 4],[2, 3],[2, 4],[4, 3]]))
