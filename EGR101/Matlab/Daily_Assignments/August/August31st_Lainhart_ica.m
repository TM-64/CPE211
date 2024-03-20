%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Caleb Lainhart
%9/01/2023
%August31st_Lainhart_ica
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [ac_control, cold_temp_count, good_temp_count, hot_temp_count] = August31st_Lainhart_ica(temp_range,num_days,comfy_temp) 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%-------------------------Input/Output Definitions------------------------%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Input Definitions:
% - temp_range: the tolerable range in your house or place of living.
% - num_days: the number of days you are aiming to simulate
% - comfy_temp: the preferred temperature level your place of living.
%-------------------------------------------------------------------------%
%Output Definitions:
% - ac_control: This is an array which will say 0, 1, or 2 depending on
%               whether the temperature is at a specific condition.
% - cold_temp_count: This is a count of how many hours would be considered
%                    below your comfortable temperature range.
% - good_temp_count: This is a count of how many hours would be considered
%                    in your comfortable temperature range.
% - hot_temp_count: This is a count of how many hours would be considered
%                   above your comfortable temperature range.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%-------------------------------------------------------------%
%Given statements
%-------------------------------------------------------------%
%This line of code is given by the instructor. DO NOT CHANGE
x = round(rand(1,num_days*24).*( (temp_range(1,2)+2)-(temp_range(1,1)-2) ) ) + temp_range(1,1);
%predefining an empty array of ac_control. Do not Change.
ac_control(1:num_days*24) = 0; 
%-------------------------------------------------------------%
%Conditionals
%-------------------------------------------------------------%
%finds the index of every hour that the temperature is colder than your
%comfortable temperature
coldIdx = find(x<comfy_temp);
%finds the index of every hour that the temperature is hotter than your
%comfortable temperature
hotIdx = find(x>comfy_temp);
%finds the index of every hour that the temperature is your
%comfortable temperature
goodIdx = find(x==comfy_temp);
%-------------------------------------------------------------%
%Outputs
%-------------------------------------------------------------%
%finds the amount of cold hours over all of the days
cold_temp_count = length(coldIdx);
%finds the amount of hot hours over all of the days
hot_temp_count = length(hotIdx);
%finds the amount of comfy hours over all of the days
good_temp_count = length(goodIdx);
%sets the value of the vector to 0 at every hour that its cold 
ac_control(coldIdx)=0;
%sets the value of the vector to 2 at every hour that its hot
ac_control(hotIdx)=2;
%sets the value of the vector to 1 at every hour that its comfy 
ac_control(goodIdx)=1;
end 