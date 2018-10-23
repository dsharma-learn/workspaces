# -*- coding: utf-8 -*-

# -----------------------------------------------------------------------------    
# Tuple and list demo
# -----------------------------------------------------------------------------    
def tupleListDemo():
    x=5,6,2,6
    x1=(5,6,2,6)
    y=[5,6,2,6]
    
    print (x)
    print (x1)
    print (y)
    
    print (x+x1)
    
    
# -----------------------------------------------------------------------------    
# List Manipulation
# -----------------------------------------------------------------------------    
def manipulateList():
    x=[5,6,2,6,7,8,9,4,5,8]
    print ("original list: ", x)

    # Append in end
    x.append(3)
    print ("Appended 3: ", x)
    
    # Insert in middle
    x.insert (2,99)
    print ("Insterted 99: ", x)
    
    # Remove
    x.remove(99)
    print ("Removed 99 : ", x)
    
    #print 1st valye from end 
    print (x[-1])
    
    #Print slice of data 
    print (x[1:5])
    
    #Print index of a value
    print (x.index(2))
    
    #Print index of a value
    print ("Count: ", x.count(2))

    # Sort: 
    x.sort
    print ("Sorted list", x)
    

# -----------------------------------------------------------------------------    
# Multi Dimensional List Manipulation
# -----------------------------------------------------------------------------    
def twoDimListExample():
    x=[[5,6],
       [3,1],
       [4,9],
       [8,7]
      ]
    print ("Whole List: ",x)
    print ("1,2 element", x[3][0])

# -----------------------------------------------------------------------------    
# Main
# -----------------------------------------------------------------------------    
#tupleListDemo();   
#manipulateList() 
twoDimListExample();