import UIKit

/*
 Leet Code #306. Additive Number
 https://leetcode.com/problems/additive-number/
 */

/*
 *** Session Solution ***
 def check_valid(left_num: str, right_num: str, remainder: str) -> bool:
     if (len(right_num) > 1 and right_num[0] == '0') or (len(left_num) > 1 and left_num[0] == '0'):
         print("your left and right failed validation")
         return False
     sum = str(int(left_num) + int(right_num))
     while remainder and len(remainder) >= len(sum):
         print(f"left:{left_num}, right:{right_num}, remainder:{remainder}, sum: {sum}")
         if remainder == sum:
             print("check_valid returned True")
             return True
         if remainder.startswith(sum):
             remainder = remainder[len(sum):]
             left_num = right_num
             right_num = sum
             sum = str(int(left_num) + int(right_num))
         else:
             print("check_valid returned False")
             return False
     return False
 class Solution:
     def isAdditiveNumber(self, num: str) -> bool:
         if not num or len(num) < 3:
             return False
         stopping_point = (len(num) // 2) + 1
         for left_index in range(1, stopping_point):
             for right_index in range(left_index + 1, stopping_point + left_index + 1):
                 print(f"{left_index}, {right_index}")
                 left_num = num[:left_index]
                 right_num = num[left_index:right_index]
                 remainder = num[right_index:]
                 if check_valid(left_num, right_num, remainder):
                     return True
         return False
 */
