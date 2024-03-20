%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Caleb Lainhart
%8/30/2023
%August29th_Lainhart_ica
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [] = August29th_Lainhart_ica()
%-------------------------------------------------------------%
%Input statements
%-------------------------------------------------------------%
%Asks for the current temperature of the drinks and assigns the input to
%initialTemp
initialTemp = input('What is the current temperature of the drinks in farenheit? \n');
%Asks for the fridges temperature and assingns the input to fridgeTemp
fridgeTemp = input('What is the temperature of the fridge in farenheit? \n');
%Asks for the favorite temperature and assigns the input to faveTemp
faveTemp = input('What is your favorite drinking temperature in farenheit? \n');
%-------------------------------------------------------------%
%Calculations
%-------------------------------------------------------------%
%Used algebra to solve the Newton's law of cooling for time
time = (log((faveTemp-fridgeTemp)/(initialTemp-fridgeTemp)))/(-.35);
%-------------------------------------------------------------%
%Output
%-------------------------------------------------------------%
%Prints out the amount of time it would take to cool the drinks to the
%desired temperature
fprintf("It should take %4.2d minutes to cool the drinks to %d degrees F if your friend's fridge has a temperature of %d degrees F",time,faveTemp,fridgeTemp);
%-------------------------------------------------------------%
%Graph
%-------------------------------------------------------------%
%Creates a Vector of 2000 values from 0 to double the time it takes to cool
%the drink to your entire temperature
timeVect = linspace(0,time*2,2000);
%Creates a vector of 2000 values of the temperature of the drink at the
%given time value
tempVect = fridgeTemp + (initialTemp-fridgeTemp)*exp(-.35.*timeVect);
figure;% creates the window for the graph
%Plots the temperature of the drink vs. time as a red line with diamonds at
%every point
plot(timeVect,tempVect,'rd');
xlabel("Time_{min}");%labels the X axis of the graph
ylabel("Temperature_{F}");%labels the y axis of the graph
title("Temperature of a drink V. Time cooled","Color",'b');%gives the graph a title in the color blue
end