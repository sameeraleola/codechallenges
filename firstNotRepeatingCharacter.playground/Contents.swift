import UIKit
// CodeSiginal array interview practice - firstNotRepeatingCharacter

func firstNotRepeatingCharacter(s: String) -> Character {
    for c in s {
        if s.firstIndex(of: c) == s.lastIndex(of: c) {
            return c
        }
    }
    return "_"
}

print(firstNotRepeatingCharacter(s: "abacabad"))
print(firstNotRepeatingCharacter(s: "bcb"))
print(firstNotRepeatingCharacter(s: "abacabaabacaba"))
