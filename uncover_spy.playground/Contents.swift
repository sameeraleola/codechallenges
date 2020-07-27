import UIKit

/*
CodeSignal Code Challenge: uncover_spy
func uncover_spy(n : Int , people : [[Int]]) -> Int {}

 In a city-state of n people, there is a rumor going around that one of the n people is a spy for th neighboring city-state.
 
 The spy, if it exists:
 1. Does not trust anyone else.
 2. Is trusted by everyone else (he's good at his job).
 3. Works alone; there are no other spies in the city-state.
 
 You are given a list of pairs, trust. Each trust[i] = [a, b] represents the fact that person a trusts person b.
 If the spy exists and can be found, return their identifier. Otherwise, return -1.

 Example 1:
 Input: n = 2, trust = [[1, 2]]  ->  Output: 2
 Explanation: Person 1 trusts Person 2, but Person 2 does not trust Person 1, so Person 2 is the spy.
 
 Example 2:
 Input: n = 3, trust = [[1, 3], [2, 3]]  ->  Output: 3
 Explanation: Person 1 trusts Person 3, and Person 2 trusts Person 3, but Person 3 does not trust either Person 1 or Person 2.
 Thus, Person 3 is the spy.

 Example 3:
 Input: n = 3, trust = [[1, 3], [2, 3], [3, 1]]  ->  Output: -1
 Explanation: Person 1 trusts Person 3, Person 2 trusts Person 3, and Person 3 trusts Person 1. Since everyone trusts at least one other person, there is no spy.

 Example 4:
 Input: n = 3, trust = [[1, 2], [2, 3]]  ->  Output: -1
 Explanation: Person 1 trusts Person 2, and Person 2 trusts Person 3. However, we don't know if Person 3 trusts someone or not, so we don't have enough information.
 
 Example 5:
 Input: n = 4, trust = [[1, 3],[1, 4],[2, 3],[2, 4],[4, 3]]  ->  Output: 3
 Explanation: Person 1 trusts Person 3 and Person 4, Person 2 trusts Person 3 and Person 4, Person 4 trusts Person 3. Everyone trusts Person 3 but Person 3 does not trust anyone, so they are the spy.
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

//print(uncover_spy(n: 3, people:[[1, 2], [2, 3]])) // -1
print(uncover_spy(n: 3, people:[[1, 3], [2, 3], [3, 1]]))
//print(uncover_spy(n: 4, people: [[1, 3],[1, 4],[2, 3],[2, 4],[4, 3]]))
