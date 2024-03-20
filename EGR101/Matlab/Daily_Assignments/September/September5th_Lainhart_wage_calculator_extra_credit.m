%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Caleb Lainhart
%9/07/2023
%Wage Calculator
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [] = September5th_Lainhart_wage_calculator_extra_credit()
overtime_hours = 0;%pre declared overtime_hours variable
hours_worked = input('How many hours do you work? \n');%takes the input for how many hours were worked in the week
hourly_wage = input('What is your hourly pay? \n');%Takes the input for how much is your hourly wage
if(hours_worked>40)% checks if more than 40 hours were worked this week
    overtime_hours = hours_worked-40;%sets overtime hours to amout of hours over 40 worked that week
    hours_worked =40;%sets normal pay hours to 40 hours max
end
%           BASE PAY                    OVERTIME PAY
pay =(hours_worked * hourly_wage)+(overtime_hours*hourly_wage*1.5);%finds the normal pay with out tax for the week
gross_pay = (hours_worked * hourly_wage*(1-.123))+(overtime_hours*hourly_wage*1.5*(1-.15));%finds the gross pay with tax for the week
fprintf('Your total pay is $%d, Your gross pay is $%d',pay,gross_pay);%displays both the normal and gross pay
end