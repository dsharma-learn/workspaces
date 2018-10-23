#! python3
# -*- coding: utf-8 -*-

# #############################################################################
# Print the Version: 
# #############################################################################
import sys
import time

print (sys.version)
#time.sleep(7)


# #############################################################################
# Print function: 
# #############################################################################
print ("Hello World: Test... 25,16,5") 

# Escape Character: 
print ('We\'re goint to store') 
    
# Concat: with + or comma
print ("Hi","There") ### Adds a space
print ("Hi" + "There") ### No space space


#Type conversions 
print ("Hi" , str(5)) ### converts to str
print (5 + int("6"))  ### get the sum and prints 
print (5 , int("6"))  ### prints them separately


# #############################################################################
# Math function: 
# #############################################################################
print (5/2)
print (5%2)
print (5**2)


# #############################################################################
# Variables: 
# #############################################################################
# CAn also include funct ions: 
x = print("hell0")

# #############################################################################
# While: 
# #############################################################################
condition = 1
while condition < 10:
    print (condition)
    condition+=1

# #############################################################################
# For: 
# #############################################################################
exampleList=[1,2,5,1,3,7,8,3,5,7]
for eachNumber in exampleList:
    print (eachNumber)    
    
for x in range (100,110):
        print (x)    

# in python 2 ==> its backported and is known as xrange

# #############################################################################
# If, If-Else, If-Elif-else: 
# #############################################################################
x=5
y=8
z=5

if z < y :
    print ("Y is greater than z!!! ")
elif x > y:
    print ("X is greatest !!! ")
else:
    print ("Y is not smallest !!! ")
