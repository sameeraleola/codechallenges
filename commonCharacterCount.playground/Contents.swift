import UIKit

//let alpha = 'abcdefghijklmnopqrstuvwxyz'
let s1 = "aabcc"
let s2 = "adcaa"

var commonCount = 0

var common = [Character : Int]()

// Populate the dictionary with the values in the string
for c in s1 {
    if let val = common[c] {
        common[c] = val + 1
    } else {
        common[c] = 1
    }
    print("common = \(common)")
}
