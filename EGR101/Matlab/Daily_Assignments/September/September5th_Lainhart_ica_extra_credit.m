%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Caleb Lainhart
%9/09/2023
%September5th_Lainhart_ica_extra_credit
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [] = September5th_Lainhart_ica_extra_credit(seconds)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Errors
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%errors out if the input is less than 0 or more than a year 
if(seconds<0|seconds>31536000)
    error('Keep it within the year will ya');
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Predeclerations
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
minutes=0;
hours=0;
days=0;
month='January';
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Conversions
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
minutes=floor(seconds/60);%Converts the amout of seconds to minutes and rounds the decimal down
hours=floor(minutes/60);%Converts the amout of minutes to hours and rounds the decimal down
minutes=mod(minutes,60);%finds the remaining minutes after dividing them by 60
days=floor(hours/24);%Converts the amout of hours to days and rounds the decimal down
hours=mod(hours,24);%finds the remaining hours after dividing them by 24
%Finds out which month it is by progressively going down the line and
%sees if the amount of days is greater than the start of the month's day
%then subtracts the amount of days into the year the month is leaving it
%with a days value between 1 and 31 (depending on the month)
if(days>334)
    month = 'December';
    days= days-334;
elseif(days>304)
    month = 'November';
     days= days-304;
elseif(days>273)
    month = 'October';
    days= days-273;
elseif(days>243)
    month = 'September';
    days= days-243;
elseif(days>212)
    month = 'August';
    days= days-212;
elseif(days>181)
    month = 'July';
    days= days-181;
elseif(days>151)
    month = 'June';
    days= days-151;
elseif(days>120)
    month = 'May';
    days= days-120;
elseif(days>90)
    month = 'April';
    days= days-90;
elseif(days>59)
    month = 'March';
    days= days-59;
elseif(days>31)
    month = 'February';
    days= days-31;
%Fixes the edge cases so that it starts at 12 AM on December 31st and goes until December 31st at 12AM 
elseif(days ==0)
    month = 'December';
    days= 31;
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Output
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Checks if minutes are less than 10 so it can output 6:03 AM intead of 
% 6:3 AM
if(minutes<10)
    %checks if the hours are greater than 12 so it can output with PM
    if(hours>12)
        hours=hours-12;%converts the time from military time to standard time
        fprintf('The date and time is: %s %d %d:0%d PM',month,days,hours,minutes);
    elseif(hours~=0)
        fprintf('The date and time is: %s %d %d:0%d AM',month,days,hours,minutes);
    %if the hours equal 0 than output 12AM instead
    else
        fprintf('The date and time is: %s %d 12:0%d AM',month,days,minutes);
    end
%if minutes are greater than ten just display them normally
else
    %checks if the hours are greater than 12 so it can output with PM
    if(hours>12)
        hours=hours-12;%converts the time from military time to standard time
        fprintf('The date and time is: %s %d %d:%d PM',month,days,hours,minutes);
    elseif(hours~=0)
        fprintf('The date and time is: %s %d %d:%d AM',month,days,hours,minutes);
    %if the hours equal 0, output 12AM instead
    else
        fprintf('The date and time is: %s %d 12:%d AM',month,days,minutes);
    end
end

end