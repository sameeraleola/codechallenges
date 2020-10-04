//: [Previous](@previous)

import Foundation

import UIKit

/*
 10/2/2020
 Sherlock and the Valid String
 https://www.hackerrank.com/challenges/sherlock-and-valid-string/problem?utm_campaign=challenge-recommendation&utm_medium=email&utm_source=7-day-campaign
 
 var word = "aabb"

 let numberOfChars = word.characters.count // 4
 let numberOfDistinctChars = Set(word.characters).count // 2
 let occurrenciesOfA = word.characters.filter { $0 == "A" }.count // 0
 let occurrenciesOfa = word.characters.filter { $0 == "a" }.count // 2
 let occurrenciesOfACaseInsensitive = word.characters.filter { $0 == "A" || $0 == "a" }.count // 2

 print(occurrenciesOfA)
 print(occurrenciesOfa)
 print(occurrenciesOfACaseInsensitive)
 
 -----
 
 Sample inputs:
 "aabbcd"
 "aabbccddeefghi"
 "abcdefghhgfedecba"
 
 var charsDict : [Character : Int] = [:]
 
 Prepare:
 Iterate the string and put each character into a dictionary.
 Count each occurance of the character as the value.
 Use Dictionary(grouping: charsDict, by: { $0.charCount })
 [
 After all characters have been entered count the values.
 If there is only one non-unique value and it is only +1 return true else return false.
 */
//
//let str1 = "aabbcd"
let str1 = "aabbcccddd"
let str2 = "aabbccddeefghi"
let str3 = "abcdefghhgfedecba"

var charsDict : [Character : Int] = [:]
var occurances = 0

for c in str1 {
    charsDict[c, default: 0] += 1
}

let uniqueValues: [Int] = [Int](charsDict.values)
print(uniqueValues)
//print(NSSet(uniqueValues: uniqueValues).count)
//  let occurrenciesOfa = word.characters.filter { $0 == "a" }.count // 2

//let uniqueValues = charsDict.values.filter
let uniqueCounts = Dictionary(grouping: charsDict, by: { $0.value }).count//keys.count
//if Dictionary(grouping: charsDict, by: { $0.value }).count == 1 {
//    print("Sherlock has declared this a valid string ")
//}
//filter { $0.value.unique}
print(uniqueCounts)
//print(charsDict)
for cnt in uniqueValues {
    print(cnt)
}

func countDistinct(numbers: [Int]) -> Int {
    let array:Array<Int> = numbers
    let count = NSSet(array: array).count
    return count
}

print(countDistinct(numbers: [20, 10, 10, 30, 20]))




//let occurrenciesOf3 = charsDict.values.filter { $0 == 3 }.count    //.filter { $0 == "a" }.count // 2

//let reducedSubtitles = dict["subtitles"]!.reduce([[String: Any]]()) { (result, current) in
//    if result.contains(where: { $0["language"] as? String == current["language"] as? String }) {
//        return result
//    }
//
//    return result + [current]
//}


//let uniqueCounts = Dictionary(grouping: charsDict, by: { $0.values }).count
//let uniqueCounts = Dictionary(grouping: charsDict.keys, by: { $0.value }).count


//: [Next](@next)
