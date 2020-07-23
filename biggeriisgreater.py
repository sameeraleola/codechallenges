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

# Notes from yesterday
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



# Sean's final version
def bigger_is_greater(w):
	# turn the input string into a list of chars
	chars = list(w)
	# index for when we traverse the list from right to left
	# in order to find the char that needs to be swapped
	i = len(chars) - 1
	# loop through the list until we find the char to swap
	while i > 0 and chars[i-1] >= chars[i]:
		i -= 1
	# if i gets all the way to the left of the array, then we 
	# didn't find a char that needs to be swapped out
	if i <= 0:
		return "no answer"
	
	# once we've found the char to swap, perform another traversal
	# starting from the right of the list to the left in order to 
	# find the smallest char that is greater than the char that 
	# needs to be swapped
	while chars[j] <= chars[i-1]:
		j -= 1
	# at this point, j is pointing at the smallest char that is 
	# greater than the char that needs to be swapped
	# swap them 
	chars[i-1], chars[j] = chars[j], chars[i-1]
	
	# now we need to change the string so that every char to the 
	# right of the swapped char is sorted in lexicographical order
	# it turns out we don't need to perform a full-on sort here
	# because it turns out that any chars we didn't swap are 
	# already in descending lexicographical order 
	# so, instead of performing a full-on sort, all we need to
	# do is reverse the sub-list starting at the char directly
	# to the right of the swapped char
	chars[i:] = chars[len(chars)-1 : i-1 : -1]
	
	# finally, join the list of chars back into a string
















