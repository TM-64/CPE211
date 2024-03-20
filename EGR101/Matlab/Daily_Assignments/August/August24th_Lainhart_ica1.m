%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Caleb Lainhart
%8/25/2023
%August24th_Lainhart_ica1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [y_array,x_array,y_stats] = August24th_Lainhart_ica1(m,b,x)
%x values
%-------------------------------------------------------------%
%Creates an array of 10000 X values between the starting X value and the
%ending X value
x_values1 = linspace(x(1,1),x(1,2),10000);
x_values2 = linspace(x(2,1),x(2,2),10000);
x_values3 = linspace(x(3,1),x(3,2),10000);
%-------------------------------------------------------------%
%Y values
%-------------------------------------------------------------%
%Uses Y= mx+b to find the Y value of every X value from the X value lists
%and puts those answers into its own lists
y1 = x_values1.*m(1)+b(1);
y2 = x_values2.*m(2)+b(2);
y3 = x_values3.*m(3)+b(3);
%-------------------------------------------------------------%
%Outputs
%-------------------------------------------------------------%
y_array = [y1;y2;y3];%Puts all of the answer lists into a 3X10000 matrix of answers
x_array = [x_values1;x_values2;x_values3];%Puts all of the X value arrays into a 3X10000 matrix of X values
y_stats=[mean(y1),min(y1),max(y1);mean(y2),min(y2),max(y2);mean(y3),min(y3),max(y3)];%Puts in all of the stats of each line in a 3X3 matrix 
end