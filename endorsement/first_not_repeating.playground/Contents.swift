import UIKit

func first_not_repeating_character(s: String) -> Character {
        for c in s { // O(n)
            if s.firstIndex(of: c) == s.lastIndex(of: c) {  // 2 O(n) = O(n)
                return c // O(1)
            }
        }
    return "_"  // O(1)
}

// Solution time complexity :  O(n) x O(n) = O(n^2)
