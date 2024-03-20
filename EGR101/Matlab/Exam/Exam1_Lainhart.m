%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Caleb Lainhart
%9/29/2023
%Exam1_Lainhart
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [range_bins] = Exam1_Lainhart(side_count,iteration_count)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Predeclerations
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Checks if the inputed side count is less than 10 and errors out if it is
%because if its less than 10 the program doesnt work correctly
if(side_count<10)
    error('Whoa there champ this is a high roller kind of program keep it above 10 please');
end
%Generates an array the length of the inputed iteration count filled with
%random numbers from 1 to the number of sides inputed
roll_array=round(rand(1,iteration_count).*(side_count-1)+1);
%creates a value for the range bins to split the generated value into 10
%spaced bins
ranger=floor(side_count/10);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Path 1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%all of these variables count the number of values rolled in the different
%bins which are 10 equally spaced bins. When inputing 100 into side_count
%the bins are split 1-10 11-20 and so on.
%length(     find(     conditionals    ) )
%                          ^
%              ^        Checks if the number is in a given range bin.
%            finds every single instance of the conditional and puts them
%   ^        into an array.
%finds the length of the given array, in this context it finds the number
%of values in that given range bin
range1=length(find(roll_array<=ranger));
range2=length(find((roll_array>ranger)&(roll_array<=2*ranger)));
range3=length(find((roll_array>2*ranger)&(roll_array<=3*ranger)));
range4=length(find((roll_array>3*ranger)&(roll_array<=4*ranger)));
range5=length(find((roll_array>4*ranger)&(roll_array<=5*ranger)));
range6=length(find((roll_array>5*ranger)&(roll_array<=6*ranger)));
range7=length(find((roll_array>6*ranger)&(roll_array<=7*ranger)));
range8=length(find((roll_array>7*ranger)&(roll_array<=8*ranger)));
range9=length(find((roll_array>8*ranger)&(roll_array<=9*ranger)));
range10=length(find((roll_array>9*ranger)&(roll_array<=10*ranger)));
%puts all of range bin variables into one big array
range_bins=[range1,range2,range3,range4,range5,range6,range7,range8,range9,range10];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Path 2
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% creates a 1 by 10 array that initializes all values to 0
remain_array(1:10) = 0;
%loops through the entire array of dice rolls
for k=1:1:length(roll_array)
    %checks what the last digit of the rolled value is and then increases
    %the corresponding value in the remain array by 1
    switch(mod(roll_array(k),10))
        case 0
            remain_array(1) =remain_array(1)+1;
        case 1
            remain_array(2) =remain_array(2)+1;
        case 2
            remain_array(3) =remain_array(3)+1;
        case 3
            remain_array(4) =remain_array(4)+1;
        case 4
            remain_array(5) =remain_array(5)+1;
        case 5
            remain_array(6) =remain_array(6)+1;
        case 6
            remain_array(7) =remain_array(7)+1;
        case 7
            remain_array(8) =remain_array(8)+1;
        case 8
            remain_array(9) =remain_array(9)+1;
        case 9
            remain_array(10) =remain_array(10)+1;
    end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Graphs
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Splits the graph into 3 different graphs and selects the first one
subplot(3,1,1);
%creates a histogram that plots the distribution of the range bins
histogram(range_bins,16);
%labels the graph
title('Distribution of range bins');
ylabel('Number of bins');
xlabel('Number of values rolled');

%selects the second graph
subplot(3,1,2);
%creates a bar graph that plots the distribution of the ending digit
%I decided to make it a bar graph as it would show the data better
bar([0:1:9],remain_array);
%labels the graph
title('Distribution of ending digits rolled');
ylabel('Number of values rolled');
xlabel('Ending digit of rolled value')

%selects the third graph
subplot(3,1,3);
%creates a histogram that plots the distribution of the rolled values
%I added a third graph so that you can actually see the distribution of
%rolled values
histogram(roll_array,[1:ranger:ranger*10+1]);
%labels the graph
title('Distribution of rolled values');
ylabel('Number of values rolled');
xlabel('Value of rolled number');
end