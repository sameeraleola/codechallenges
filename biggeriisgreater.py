# Bigger is Greater
# https://www.hackerrank.com/challenges/bigger-is-greater/problem?utm_campaign=challenge-recommendation&utm_medium=email&utm_source=24-hour-campaign
# Look in documents/bigger-greater for Sean's notes and code
# Carlos' plan
# traverse the string right to left
    # compare the letter from the current to the next letter in the string
    # if you find one that's smaller
         # swap them (this only works when they are the last two characters in the string)
         # put the other characters in the right of the swapped letters in ascending order.

# ab -> ba
# bb -> no answer
# hefg -> hegf
# dhck -> dhkc
# dkhc -> hcdk (kdhc)

def biggerIsGreater(w):
    min_diff = float("inf")
    smallest_letter_index = 0
    chars = list(w)
    # alphabet = "abcdefghijklmnopqrstuvwxyz"
    # traverse the string right to left
    for i in reversed(range(1, len(chars))): 
        # compare the current letter to the letter to the left of the current 
        # if the letter to the left of the current is smaller 
        if chars[i] > chars[i-1]:
            # we need to swap the left character with another 
            # loop over all characters to the right 
            for j in range(i, len(chars)):
                # subtract current character from 
                diff = ord(chars[j]) - ord(chars[i-1])
                if diff > 0 and diff < min_diff:
                    min_diff = ord(chars[j]) - ord(chars[i-1])
                    smallest_letter_index = j
            chars[i-1], chars[smallest_letter_index] = chars[smallest_letter_index], chars[i-1]
            # sort the rest of the characters after the swapped character 
            return "".join(chars[:i] + sorted(chars[i:]))
    return "no answer"
    # how do we handle pairs where the left character needs to be swapped 
    # but the character to swap it with is not a character adjacent to it?

    # one way to figure out the smallest larger character to replace by is to 
    # find the character in the string with the smallest positive difference 
    # find the smallest positive unicode difference between the character to
    # replace and any other character in the string 
    
    # Given a string like "dkhc"
    # "d" is the character that we need to replace since all of the other 
    # characters in the string are ordered in descending order 
    # it doesn't suffice to just swap "k" and "d" since the smallest larger
    # character in the string is "h"
    # so we need to replace "d" with "h"
    # then put the other characters in lexicographically sorted order after "h"




















