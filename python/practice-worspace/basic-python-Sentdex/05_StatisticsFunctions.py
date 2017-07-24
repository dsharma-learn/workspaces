# -*- coding: utf-8 -*-

import statistics

# -----------------------------------------------------------------------------    
# Basic Stat functions 
# -----------------------------------------------------------------------------    
def demoBasicStats():
    exampleList= [1,2,4,7,3,6,8,9,2,56,87]
    
    print ( "Mean           = " + str(statistics.mean (exampleList)))
    print ( "Median         = " + str(statistics.median(exampleList)))
    print ( "Mod            = " + str(statistics.mode(exampleList)))
    print ( "Std Deviation  = " + str(statistics.stdev(exampleList)))
    print ( "Variance       = " + str(statistics.variance(exampleList)))

# -----------------------------------------------------------------------------    
# Main
# -----------------------------------------------------------------------------    
demoBasicStats()