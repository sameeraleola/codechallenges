import UIKit

func commonCharacterCount(s1: String, s2: String) -> Int {
    var s2Chars = Array(s2)
    var commonCount = 0
    
    for c in s1 {
        if let i = s2Chars.firstIndex(of: c) {
            commonCount += 1
            s2Chars.remove(at: i)
        }
    }
    return commonCount
}

print(commonCharacterCount(s1: "aabcc", s2: "adcaa" )) // 3
print(commonCharacterCount(s1: "zzzz", s2: "zzzzzzz" )) // 4


