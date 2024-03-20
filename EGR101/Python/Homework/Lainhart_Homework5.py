####################################################################
#Caleb Lainhart
#Python Homework 5
#11/12/23
####################################################################
#Library Calls
####################################################################
from random import randint
####################################################################
#Predeclerations
####################################################################
#Creates a array of the end points of the guess
rangeLims = [20,80]
#generates a number in the range
comNum = randint(rangeLims[0],rangeLims[1])
#finds the number of guesses you can make
guesses = round((rangeLims[1]-rangeLims[0])/5)
####################################################################
#Main
####################################################################
#Continues the game if you have guesses left
while(guesses>0):
    #Asks the user to input a number in the range
    print("Guess a number between",rangeLims[0],"and",rangeLims[1])
    userGuess = int(input())
    #Checks if the the guess is outside the range
    if(userGuess>rangeLims[1] or userGuess<rangeLims[0]):
        print("You're outside the range, Try again!")
    #Checks if the number is too high
    elif(userGuess>comNum):
        guesses-=1
        print("Too high, Try again!")
    #Checks if the number is too Low
    elif(userGuess<comNum):
        guesses-=1
        print("Too low, Try again!")
    #Happens when you guess the number
    else:
        guesses-=1
        print("Congrats! You guessed the number in",
              (rangeLims[1]-rangeLims[0])/5-guesses,"guesses!")
        #Breaks out of the loops and ends the game
        break
#Prints if you ran out of guesses
if(guesses==0):
    print("You Lost!, Too bad, the number was",comNum)
    
        
        
