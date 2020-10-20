def jumpingOnClouds(c):
    num_jumps = 0
    eoa = len(c) - 1
    current = 0
    
    while current <= c.len()
        jump_2 = current + 2
        if jump_2 <= eoa and c[jump_2]  == 0:
            current = jump_2
            num_jumps += 1
        

# def jumpingOnClouds(c):
#     # store the number of jumps that we take
#     num_jumps = 0
#     # keep track of the current cloud we're on (index)
#     current = 0
#     # while loop over c (end when our current cloud is >= len(c))
#     total_clouds = len(c)
#     while current < (total_clouds - 1):
#         if current + 2 >= total_clouds or c[current+2] == 1:
#             # then jump 1
#             current += 1
#         else:
#             current += 2
#         num_jumps += 1
    
#     return num_jumps