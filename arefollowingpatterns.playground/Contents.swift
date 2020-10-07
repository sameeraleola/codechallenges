import UIKit

func are_following_patterns(strings: [String], patterns: [String]) -> Bool {
    var pp : [String : String] = [:]
    var pattern = ""
    var sp : [String : String] = [:]
    var string = ""
    var wordCount = 0
    
    // If the pattern and string are not the same size false
    if strings.count != patterns.count {
        // return false
        return false
    }
    
    // Parse the pattern
    for w in patterns {
        if !pp.keys.contains(w) {
            wordCount += 1
            pp[w] = String(wordCount)
        }
        pattern = pattern + pp[w]!
    }

//     Look at the pattern
//    print("pp = \(pp) :: pattern = \(pattern)")
    
    // Now the string
    wordCount = 0
    for w in strings {
        if !sp.keys.contains(w) {
            wordCount += 1
            sp[w] = String(wordCount)
        }
        string = string + sp[w]!
    }
    
//     print("sp = \(sp) :: string = \(string)")
    
   // Compare the patterns
    return string == pattern ? true : false
}

//print(are_following_patterns(strings: ["cat", "dog", "dog"], patterns: ["a", "b", "b"]))
//print(are_following_patterns(strings: ["cat", "dog", "doggy"], patterns: ["a", "b", "b"]))
//print(are_following_patterns(strings: ["cat", "dog", "dog"], patterns: ["a", "b", "c"]))
//print(are_following_patterns(strings: ["aaa"], patterns: ["aaa"]))
//print(are_following_patterns(strings: ["aaa", "aaa", "aaa"], patterns: ["aaa", "bbb", "aaa"]))
//print(are_following_patterns(strings: ["aaa", "aab", "aaa"], patterns: ["aaa", "aaa", "aaa"]))
print(are_following_patterns(strings:["re", "jjinh", "rnz", "frok", "frok", "hxytef", "hxytef", "frok"],
                                  patterns: ["kzfzmjwe", "fgbugiomo", "ocuijka", "gafdrts", "gafdrts", "ebdva", "ebdva", "gafdrts"]))
