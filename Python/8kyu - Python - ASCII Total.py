#My Codewars login: MARCIN-MIERZWINSKI
#KATA: ASCII Total
#Language: Python
#DESCRIPTION: 
#You'll be given a string, and have to return the sum of all characters as an int. The function should be able to handle all printable ASCII characters.
# Examples:
# uniTotal("a") == 97
# uniTotal("aaa") == 291

#My solution:
def uni_total(s):
    res=0
    for i in [*s]:
        res += ord(i)
    return res