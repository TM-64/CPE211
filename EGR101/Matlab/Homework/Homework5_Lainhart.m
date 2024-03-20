%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Caleb Lainhart
%10/7/2023
%Homework5_Lainhart
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Predecleration
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%declares the range for the game
range_lims = [20,80];
%generates a random number between the range
rand_num = round(rand(1,1)*(range_lims(2)-range_lims(1)))+range_lims(1);
%determines how many guesses the player gets
guesses = (range_lims(2)-range_lims(1))/5;
%Tells the player the range in which they can guess
fprintf("Starting the guessing game the range is from %d through %d\n",range_lims(1),range_lims(2));
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Main
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%continues the game if the player has guesses left
while(guesses>0)
    %Asks the player to guess a number
    guess =input("Guess a number\n");
    % checks if the players guess is outside the range if so it asks them
    % to try again
    if(guess>range_lims(2)|guess<range_lims(1))
        fprintf("Try again you're outside the range\n");
    %Checks if the guess is high and tells them too high and takes away one
    %guess
    elseif(guess>rand_num)
        guesses = guesses-1;
        fprintf("Too high, Try again\n");
    %Checks if the guess is low and tells them too low and takes away one
    %guess
    elseif(guess<rand_num)
        guesses = guesses-1;
        fprintf("Too Low, Try again\n");
    %otherwise they guessed the right number and won the game
    else
        guesses=guesses-1;
        % tells them they won and in how many guesses they won
        fprintf("Congrats! You guessed the number and won! You won in %d guesses\n",((range_lims(2)-range_lims(1))/5)-guesses);
        break
    end   
end
% if they ran out of guesses tell them they lost and tell them the number
if(guesses==0)
    fprintf("You Lost, Too Bad, the number was %d",rand_num);
end

