%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Caleb Lainhart
%10/7/2023
%Homework1_Lainhart
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Predeclerations
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Declares a variable to count the number of times the user wins
userWin = 0;
%Declares a variable to count the number of times the computer wins
comWin = 0;
%Declares a variable to count the number of games played
gamesPlayed = 0;
%creates an array of the strings so they can be used easily later
arrayAns = ["Rock","Paper","Scissors"];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Main
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Continues playing the game until someone has won 3 times(best of 5 games)
while(comWin<3&&userWin<3)
    %takes in the Users play of rock paper or scissors
    userGuess = input("Choose Rock, Paper, or Scissors\n" + ...
        "Please pick 1 for Rock, 2 for Paper, or 3 for Scissors\n");
    %generates the computers random rock paper or scissor
    comGuess = round(rand(1,1)*2)+1;
    %Checks if they are both the same and declares them tied
    if(comGuess==userGuess)
        fprintf("You tied, you played %s, and the computer played %s\n",arrayAns(userGuess),arrayAns(comGuess));
    %Checks if the userGuess is 1 more than the computer and if it is it means the user wins 
    elseif(comGuess==userGuess-1)
        fprintf("You Won!, you played %s, and the computer played %s\n",arrayAns(userGuess),arrayAns(comGuess));
        userWin = userWin+1;
    %Checks if the comGuess is 1 more than the Users and if it is it means the computer wins 
    elseif(comGuess==userGuess+1)
         fprintf("You Lost :(, you played %s, and the computer played %s\n",arrayAns(userGuess),arrayAns(comGuess));
         comWin= comWin+1;
    %does the same thing as before but for when its scissors vs rock
    elseif(comGuess==userGuess+2)
        fprintf("You Won!, you played %s, and the computer played %s\n",arrayAns(userGuess),arrayAns(comGuess));
         userWin =userWin+1;
    %does the same thing as before but for when its scissors vs rock
    elseif(comGuess==userGuess-2)
        fprintf("You Lost :(, you played %s, and the computer played %s\n",arrayAns(userGuess),arrayAns(comGuess));
        comWin = comWin+1;
    %errors out if the user imputed something other than 1,2,or 3
    else
        error("Wow, You had one job and you failed it, congrats");
    end
    %increments the number of games played every time
    gamesPlayed = gamesPlayed+1;
    %displays the current score after every round
    fprintf("The current score is:\nUser: %.0f\nComputer: %.0f\n" + ...
        "Games Played: %.0f\n",userWin,comWin,gamesPlayed);
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Output
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Displays if you either won or lost and the number of games you played
if(userWin==3)
    fprintf("Congrats, You Won! it only took you %.0f games\n",gamesPlayed);
else
    fprintf("Too bad, You Lost in %.0f games, better luck next time\n",gamesPlayed);
end
