#My Codewars login: MARCIN-MIERZWINSKI
#KATA: Remove duplicates from list
#Language: Python
#DESCRIPTION: 
# Define a function that removes duplicates from an array of numbers and returns it as a result.
# The order of the sequence has to stay the same.

#My solution:
def distinct(seq):
    x=[]
    for i in seq:
        if i not in x:
            x.append(i)
    return x