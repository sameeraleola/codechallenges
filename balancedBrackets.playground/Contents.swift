import Foundation

/*
* Complete the 'balancedBrackets' function below.
*
* The function is expected to return a BOOLEAN.
* The function accepts STRING string as parameter.
*/

func balancedBrackets(string: String) -> Bool {
    let valid = "[](){}|"
    var currBracket: [Character] = []
    var brackets: [Character] = []
    var answer: Bool = false

    // Edge cases first
    if string.isEmpty { return false}
    
    // We have a
    for c in string {
        if !c.isPunctuation { continue }
        if valid.contains(c) {
                switch c {
                case "[", "(", "{", "|":
                    brackets.append(c)
                    break
                case "]":
                    if brackets.last == "[" {
                        brackets.popLast() }
                    break
                case ")":
                    if brackets.last == "(" {
                        brackets.popLast()
                    }
                    break
                case "}":
                    if brackets.last == "{" {
                        brackets.popLast()
                    }
                    break
                case "|":
                    if brackets.last == "|" {
                        brackets.popLast()}
                    break
                default: answer = false
                    }
            }
        }
    if brackets.count == 0 {
        return true
    }
    else {
        return false
    }
}

print(balancedBrackets(string: "I am happy to take your donation; any amount will be greatly appreciated.")) // true
print(balancedBrackets(string: "[(])")) // false
print(balancedBrackets(string: "foo(bar)baz")) // true
print(balancedBrackets(string: "{{||[]||}}")) // true
print(balancedBrackets(string: "I (wa)")) // true

