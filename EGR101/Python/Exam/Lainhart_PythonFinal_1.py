####################################################################
#Caleb Lainhart
#Lainhart_PythonFinal_1
#11/15/23
####################################################################
#Library Calls
####################################################################
from math import *
####################################################################
#Predeclerations
####################################################################
def cosApproximator(deg):
    #Converts the inputed degrees into radians for the equation
    rad = radians(deg)
    #creates a variable for the result
    results = 0
    #creates a iterator for the summation
    n = 0
    #creates a temporary variable it starts at .5 so it doesnt initiate
    #stopping the loop the  first or second run through
    temp = .5
####################################################################
#Work
####################################################################
    #continues iterating if the difference isnt less than .001 and
    #it hasnt iterated more than 1000 times
    while(abs(temp)>.001 and n<1000):
        #calculates the temp with the given equation
        temp = (((-1)**n)*((rad)**(2*n)))/factorial(2*n)
        #sums up the equation
        results+= temp
        #increases the iterator
        n+=1
####################################################################
#Output
####################################################################
    #prints out the answer plus how many times it iterated
    print("The approximation of cosine at",deg,"degrees is",
          results)
    print("The program iterated",n,"times to reach this answer")
        
        
