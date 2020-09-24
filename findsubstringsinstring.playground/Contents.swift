import UIKit

/*
 This is in Java
 https://www.javacodeexamples.com/java-count-occurrences-of-substring-in-string-example/724

 package com.javacodeexamples.stringexamples;
  
 public class CountOccurrencesOfSubstringExample {
     public static void main(String[] args) {
         String str = "JavaExamplesJavaCodeJavaProgram";
         String strFind = "Java";
         int count = 0, fromIndex = 0;
         
         while ((fromIndex = str.indexOf(strFind, fromIndex)) != -1 ){
             System.out.println("Found at index: " + fromIndex);
             count++;
             fromIndex++;
         }
         System.out.println("Total occurrences: " + count);
     }
 }
 
 ====
 
 Swift substring methods:
 startIndex = index of the first character
 endIndex = index after the last character
 after = index of the character after the given index
 before = index of the character before the given index
 
 https://rosettacode.org/wiki/Count_occurrences_of_a_substring#Swift
 .components
 
 */

func countSubstring(str: String, substring: String) -> Int {
    return str.components(separatedBy: substring).count - 1
}

print(countSubstring(str: "the three truths", substring: "th"))
print(countSubstring(str: "ababababab", substring: "abab"))


