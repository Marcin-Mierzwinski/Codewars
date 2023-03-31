#My Codewars login: MARCIN-MIERZWINSKI
#KATA: Greet Me
#Language: Python
#DESCRIPTION:
# Write a method that takes one argument as name and then greets that name, capitalized and ends with an exclamation point.
# Example:
# "riley" --> "Hello Riley!"
# "JACK"  --> "Hello Jack!"

#My solution:
def greet(name): 
    return "Hello {}!".format(name.capitalize())