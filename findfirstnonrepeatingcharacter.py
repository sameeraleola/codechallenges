# Problem found here: https://www.youtube.com/watch?v=5co5Gvp_-S0

str1 = "aaabcccdeeef"
str2 = "abcbad"
str3 = "abcabcabc"

nrc = dict()

for c in str3:
    if c in nrc:
       nrc[c] = nrc[c] + 1
    else:
        nrc[c] = 1

firstnotrepeat = "_"

for key, value in nrc.items():
    if 1 == value:
        firstnotrepeat = key
        break

print(firstnotrepeat)
        