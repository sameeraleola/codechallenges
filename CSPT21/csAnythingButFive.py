""" 
Given a start integer and an ending integer (both inclusive), write a function that returns the count (not the sum) of all integers in the range (except integers that contain the digit 5).

Examples:

csAnythingButFive(1, 5) -> 1, 2, 3, 4, -> 4 (there are 4 integers in the range that do not contain the digit 5)
csAnythingButFive(1, 9) -> 1, 2, 3, 4, 6, 7, 8, 9 -> 8
csAnythingButFive(4, 17) -> 4,6,7,8,9,10,11,12,13,14,16,17 -> 12
Notes:

The output can contain the digit 5.
The start number will always be less than the end number (both numbers can also be negative).
[execution time limit] 4 seconds (py3)

[input] integer start

[input] integer end

[output] integer

----------------------------------------------------------------

SOLUTION
Iterate through all numbers between the range. Check if the number contains a 5
and count it if it’s not. You can cast the number to a string to see if a 5
is in the number.

def csAnythingButFive(start, end):
    res = 0
    for num in range(start, end + 1):
        strNum = str(num)
        if '5' not in strNum:
            res += 1
    return res

"""

def csAnythingButFive(start, end):