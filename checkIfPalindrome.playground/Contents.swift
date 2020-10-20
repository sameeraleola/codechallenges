import UIKit

func isPalindrome(_ myString: String) -> Bool {
    let reverseString = String(myString.reversed())
    if(myString != "" && myString == reverseString) {
        return true
    } else {
        return false
    }
}

print(isPalindrome("Millionaire"))
