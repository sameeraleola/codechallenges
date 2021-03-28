import UIKit

/*
 Started on 11/1/2020
 https://www.hackerrank.com/contests/codart-2-0/challenges/word-count-1
 Ramesh and Suresh like keeping an inventory of words they see in sentences. To do that, they generate a list of words alphabetically and right next to a word they write the line number of its occurrence. Ramesh and Suresh are not very bright and could use your help in achieving what they want.

 ** Input Format **
 The first line of the data set for this problem is an integer N that represents the number of lines that follow.
 N lines follow.

 ** Constraints **
 1 ≤ N ≤ 6
 Max length of each line is 40.
 All letters in the input are in upper case.


 ** Output Format **
 Output the words in alphabetical order.
 After each word write the line number of each occurrence of that word. Start the number lists in the same column.
 The output is to be formatted exactly like that for the sample given below.

 **Sample Input **
 3
DOO WOP DOO WOP DOO WOP
SHOOBY DOOBY DOO
WOO WOO

**Sample Output**
 DOO 1 1 1 2
 DOOBY 2
 SHOOBY 2
 WOO 3 3
 WOP 1 1 1
 */

/*
 RESOURCES:
 https://sarunw.com/posts/how-to-split-string-into-array-of-substrings-in-swift/
 */

let sentences = ["DOO WOP DOO WOP DOO WOP", "SHOOBY DOOBY DOO", "WOO WOO"]

let lineCount = 3
var currLine = 1
var words:[Int:[String]] = [:]

for currLine in 0..<sentences.count {
//    print(currLine)
//    print(sentences[currLine])
    let wordsInSentence = sentences[currLine].components(separatedBy: " ")
//    print(wordsInSentence)
//    words[currLine] =
 words = [currLine : wordsInSentence]
}
print(words)

