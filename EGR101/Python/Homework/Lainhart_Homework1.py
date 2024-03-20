####################################################################
#Caleb Lainhart
#Python Homework 1
#11/12/23
####################################################################
#Library Calls
####################################################################
from random import randint
####################################################################
#Predeclerations
####################################################################
#Creates counters for each player wins and total games played
userWins = 0
comWins = 0
gamesPlayed = 0
#sets up the array of weapons
weapons = ["Rock","Paper","Scissors"]
####################################################################
#Main
####################################################################
#continues playing the game until one player has won 3 games
while(comWins<3 and userWins<3):
    #takes the users input of weapon
    userGuess = int(input("Choose Rock, Paper, or Scissors\nPlease pick "+
                      "1 for Rock, 2 for Paper, or 3 for Scissors\n"))
    #randomly generates a weapon for the computer to use
    comGuess = randint(1,3)
    #errors out if you chose a number other than 1,2,3
    if(not(userGuess<=3 and userGuess>=1)):
        raise Exception("Your input is wrong, Try again")
    #Checks who won and lost or if they tied
    if(comGuess == userGuess):
        print("You Tied, you played",weapons[userGuess-1],"and the computer played",weapons[comGuess-1],"\n")
    elif(comGuess==userGuess-1):
        print("You Won!, you played",weapons[userGuess-1],"and the computer played",weapons[comGuess-1],"\n")
        userWins+=1
    elif(comGuess==userGuess+1):
         print("You Lost :(, you played",weapons[userGuess-1],"and the computer played",weapons[comGuess-1],"\n")
         comWins+=1
    elif(comGuess==userGuess+2):
        print("You Won!, you played",weapons[userGuess-1],"and the computer played",weapons[comGuess-1],"\n")
        userWins+=1
    elif(comGuess==userGuess-2):
        print("You Lost :(, you played",weapons[userGuess-1],"and the computer played",weapons[comGuess-1],"\n")
        comWins+=1
    #increases the number of games played every time no matter the outcome
    gamesPlayed+=1
    #prints the current score out
    print("The current score is:\nUser:",userWins,"\nComputer:",comWins,"\n" +
            "Games Played:",gamesPlayed,"\n")
####################################################################
#Output
####################################################################
#checks who won the game and prints the corresponding message
if(userWins==3):
    print("Congrats, You Won! it only took you",gamesPlayed,"games\n")
else:
    print("Too bad, You Lost in",gamesPlayed,"games, better luck next time\n")
