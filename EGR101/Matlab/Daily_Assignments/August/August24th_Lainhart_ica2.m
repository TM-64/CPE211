%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Caleb Lainhart
%8/25/2023
%August24th_Lainhart_ica2
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [ans_max] = August24th_Lainhart_ica2()
x_values = linspace(-5,4,100);%Creates a vector of 100 x values form -5 to 4
eval_values = 8.*(x_values.^2)+4.*x_values+32;%evaluates the polynomial equation at every single x value in the vector
ans_max =max(eval_values);%finds the max value from the list of evaluated values
end