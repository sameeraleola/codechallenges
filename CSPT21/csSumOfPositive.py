""" 
Given an array of integers, return the sum of all the positive integers in the array.

Examples:

csSumOfPositive([1, 2, 3, -4, 5]) -> 1 + 2 + 3 + 5 = 11
csSumOfPositive([-3, -2, -1, 0, 1]) -> 1
csSumOfPositive([-3, -2]) -> 0
Notes:

If the input_arr does not contain any positive integers, the default sum should be 0.
[execution time limit] 4 seconds (py3)

[input] array.integer input_arr

[output] integer

----------------------------------------------------------------

SOLUTION
Iterate through all numbers and add up all numbers that are > 0

def csSumOfPositive(input_arr):
    res = 0
    for num in input_arr:
        if num > 0:
            res += num
    return res

"""

def csSumOfPositive(input_arr):