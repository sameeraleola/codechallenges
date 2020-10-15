import UIKit
// Code Signal : Are Following Patterns

func are_following_patterns(strings: [String], patterns: [String]) -> Bool {
    // If the string and patterns are not the same size than we're done.
    if strings.count != patterns.count {
        return false
    }
    
    // If there's only one value it's following
    if strings.count == 1 {
        return true
    }
    
    
    
    return false
}



