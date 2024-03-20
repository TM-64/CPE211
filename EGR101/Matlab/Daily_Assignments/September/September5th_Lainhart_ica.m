%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Caleb Lainhart
%9/09/2023
%September5th_Lainhart_ica
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [] = September5th_Lainhart_ica(hours)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Errors
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%errors out if the input is less than 0 or more than a year 
if(hours<0|hours>8760)
    error('Keep it within the year will ya');
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Predeclerations
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
days=0;
month='January';
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Conversions
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
days=floor(hours/24);%Converts the amout of hours to days and rounds the decimal down
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
%prints out the date
fprintf('The date is: %d of %s',days,month);

end