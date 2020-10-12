//: [Previous](@previous)

import Foundation

import UIKit

/*
 10/2/2020
 Sherlock and the Valid String
 https://www.hackerrank.com/challenges/sherlock-and-valid-string/problem?utm_campaign=challenge-recommendation&utm_medium=email&utm_source=7-day-campaign
 
 A solution:
 https://medium.com/@rohitpradhan/the-swift-solution-of-the-hacker-rank-problem-sherlock-and-the-valid-string-56dc01042750
 This is one of the interesting problems in the on Hackerrank. I have invested some time in resolving this problem so I thought I would share with others. You can find the link here.
 The problem is that a string is considered to be valid if all characters of the string appear the same number of times. It is also valid if he can remove just character at index in the string, and the remaining characters will occur the same number of times.
 For example, if s = abc, it is a valid string because frequencies are {a:1, b:1, c:1}. So is s = abcc because we can remove one c and have 1 of each character in the remaining string. If s = abccc however, the string is not valid as we can only remove 1 occurrence of c. That would leave character frequencies of {a:1, b:1, c:2}.
 */

/*
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
 Edge cases:
 - One element return true
 - Empty return false
 Iterate the string and put each character into a dictionary.
 Count each occurance of the character as the value.
 Use Dictionary(grouping: charsDict, by: { $0.charCount })
 [
 After all characters have been entered count the values.
 If there is only one non-unique value and it is only +1 return true else return false.
 */
//
let str1 = "aabbcd"
let str2 = "aabbccddeefghi"
let str3 = "abcdefghhgfedecba"
let str4 = "aabbccdd"
let str5 = "aabbccc"

var charsDict : [Character : Int] = [:]

for c in str3 {
    charsDict[c, default: 0] += 1
}

let minValue = charsDict.values.min()

if charsDict.values.allSatisfy({$0 == minValue}) {
    print(charsDict.values.allSatisfy({$0 == minValue}))
    print("Yes")
} else {
    let numNotSatisfied = charsDict.values.filter { $0 > minValue! }.count
    if numNotSatisfied == 1 {
        let notSatisfiedDictValue = charsDict.values.filter { $0 > minValue! }
        print(notSatisfiedDictValue.description)
    } else {
        print("No")
    }
}



//: [Next](@next)
