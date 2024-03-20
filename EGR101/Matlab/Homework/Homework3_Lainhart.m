%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Caleb Lainhart
%10/7/2023
%Homework3_Lainhart
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [output] = Homework3_Lainhart()
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Predeclerations
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%rolls a ten sided die 10000 times 
rolls = round(rand(1,10000).*10+0.5);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Main
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%finds the number of times each number is rolled
count1 =length(find(rolls==1));
count2 =length(find(rolls==2));
count3 =length(find(rolls==3));
count4 =length(find(rolls==4));
count5 =length(find(rolls==5));
count6 =length(find(rolls==6));
count7 =length(find(rolls==7));
count8 =length(find(rolls==8));
count9 =length(find(rolls==9));
count10 =length(find(rolls==10));
%Puts all of the counts of how many times each number is rolled into a
%single array
output = [count1,count2,count3,count4,count5,count6,count7,count8,count9,count10];
%finds the number that appears the most
[county,idx]= max(output);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Output
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% prints the number that appears the most 
fprintf("the number %d appears the most",idx);
%creates a bar graph showing the distribution of the dice faces in
%percentages
bar([1:1:10],output./100);
xlabel("Number rolled");
ylabel("Percent of dice rolled");
title("Distribution of dice faces rolled");
end