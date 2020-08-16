import UIKit


var s1 = "aabcc"
var s2 = "adcaa"

var s1Chars = Array(s1)

var commonCount = 0

// Using a dictionary
//var common = [Character : Int]()
//
//// Populate the dictionary with the values in the string
//for c in s1 {
//    if let val = common[c] {
//        common[c] = val + 1
//    } else {
//        common[c] = 1
//    }
//    print("common = \(common)")
//}

for c in s1Chars {
//    if s2.contains(c) {
//        commonCount += 1
//
//        print("c = \(c)")
//    }
    if let i = s2.firstIndex(of: c) {
        commonCount += 1
        s2.remove(at: i)
        s1.removeFirst()
        print("s1 = \(s1) :: s2 = \(s2)")
    }
}
print("The common count = \(commonCount)")
    




