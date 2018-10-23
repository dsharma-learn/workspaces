# -*- coding: utf-8 -*-
###############################################################################
# Basic Function
###############################################################################
def example():
    print ("Basic Function")
    z=3+9
    print ("z=" + str(z))


###############################################################################
# Basic Function with parameters
###############################################################################
def simpleAddition (num1, num2):
    answer = num1+num2
    print ("Num1 is", num1)
    print ("Answer is", answer)
    
###############################################################################
# Basic Function with default parameters
###############################################################################
def simple (num1, num2):
    answer = num1+num2
    print ("Num1 is", num1)
    print ("Answer is", answer)
    

# Even if a variable is defined outside of function, its not a global variable. 
# It can be accessed in a readonly way within other functions but it can not be 
# modified. 
# You have to explicitly define a variable as “global”  before it can be used.

x = 5

def exampleContext ():
    # will work
    print (x)
    
    # will not work
    #x=+ 6 
    
    #to make it work, add global explicitly:
    global x
    x += 6 
    print (x)
    
    

###############################################################################
# Main Body
###############################################################################
#example()
#simpleAddition(1,3)
exampleContext ()