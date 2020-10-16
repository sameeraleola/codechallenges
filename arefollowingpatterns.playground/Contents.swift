import UIKit
// Code Signal : Are Following Patterns

func are_following_patterns(strings: [String], patterns: [String]) -> Bool {
    // If the string and patterns are not the same size than we're done.
    if strings.count != patterns.count {
        return false
    }
    
    // Dictionary to parse the string and pattern
    var strDict : [String : Int] = [:]
    var patDict : [String : Int] = [:]
    
    for index in 0 ..< strings.count {
        print(strings[index])
//    if strDict.indexForKey("someKey") != nil {
//        // the key exists in the dictionary
//    }
    }
    
    
    return false
}

print(are_following_patterns(strings: ["aaa", "bbb", "ccc"], patterns: ["cat", "dog", "bird"]))



