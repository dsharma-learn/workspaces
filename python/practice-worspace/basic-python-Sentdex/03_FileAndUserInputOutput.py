# -*- coding: utf-8 -*-

# -----------------------------------------------------------------------------    
# File Input Output Examples
# -----------------------------------------------------------------------------    
def fileIOExample():
    # Write : overwrites the existing file with new data.
    text = "simple tex \nNew Line";
    saveFile = open ("output/examplefile.txt", 'w')
    saveFile.write(text)
    saveFile.close();
    
    # Appending: Appends 
    saveFile = open ("output/examplefile.txt", 'a')
    text = "\nSome more text"
    saveFile.write(text)
    saveFile.close();
    
    # Appending: Appends 
    readFile = open ("output/examplefile.txt", 'r')
    #while (readFile.
    print(readFile.readlines())

# -----------------------------------------------------------------------------    
# Read from CSV
# -----------------------------------------------------------------------------    
import csv
def readCSV():
    with open("data/sample.csv") as csvFile
    readCSV = csv.reader(csvFile,delimiter)
    
    
# -----------------------------------------------------------------------------    
# User Input Output Examples
# -----------------------------------------------------------------------------    
def userIOExample():
    x = input ("Whats ur name? ")
    print (x)
    
# -----------------------------------------------------------------------------    
# Main 
# -----------------------------------------------------------------------------    
userIOExample()