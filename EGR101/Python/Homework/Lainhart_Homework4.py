####################################################################
#Caleb Lainhart
#Python Homework 4
#11/12/23
####################################################################
#Predeclerations
####################################################################
#Sets up the array of richter readings to be checked
richterArray = [1.0,5.0,9.1,9.2,9.5]
#Sets up the convertion from joules to tons of TNT
TNTJoules = 4.184*pow(10,9)
####################################################################
#Main
####################################################################
#iterates through the array of richter readings
for r in richterArray:
    #Converts richter reading to joules
    joules = pow(10,(1.5*r)+4.8)
    #prints out the amount of joules the reading is equal to
    print("An earthquake with a measurement of",r,"releases\n"+
          str(round(joules,2))+" joules of energy")
    #prints out the number of tons of TNT the reading is equal to
    print("This is equivalent to",round(joules/TNTJoules,1),"tons of TNT\n")
