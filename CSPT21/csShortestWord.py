""" 
Given a string of words, return the length of the shortest word(s).

Notes:

The input string will never be empty and you do not need to validate for different data types.
[execution time limit] 4 seconds (py3)

[input] string input_str

[output] integer

----------------------------------------------------------------

SOLUTION
Transform the input string into an array using the split() API (you can also do
this manually). Iterate through the list and keep track of the shortest word.

def csShortestWord(input_str):
    words = input_str.split()
    shortestFound = float("inf")
    for word in words:
        wordLen = len(word)
        if wordLen < shortestFound:
            shortestFound = len(word)
    return shortestFound

"""

def csShortestWord(input_str):