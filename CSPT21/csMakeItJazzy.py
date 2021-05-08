""" 
Create a function that concatenates the number 7 to the end of every chord in a list. If a chord already ends with a 7, do not add another 7.

Examples:

csMakeItJazzy(["G", "F", "C"]) ➞ ["G7", "F7", "C7"]
csMakeItJazzy(["G", "F7", "C"]) ➞ ["G7", "F7", "C7"]
csMakeItJazzy(["Dm", "G", "E", "A"]) ➞ ["Dm7", "G7", "E7", "A7"]
csMakeItJazzy(["F7", "E7", "A7", "Ab7", "Gm7", "C7"]) ➞ ["F7", "E7", "A7", "Ab7", "Gm7", "C7"]
csMakeItJazzy([]) ➞ []
Notes:

Return an empty list if the given list is empty.
You can expect all the tests to have valid chords.
[execution time limit] 4 seconds (py3)

[input] array.string chords

[output] array.string

----------------------------------------------------------------

SOLUTION
Iterate through the entire array and add a ‘7’ if the last character
of the chord is not ‘7’

def csMakeItJazzy(chords):
    for index, chord in enumerate(chords):
        if chord[-1] != '7':
            chords[index] = chords[index] + '7'
    return chords

"""

def csSchoolYearsAndGroups(years, groups):