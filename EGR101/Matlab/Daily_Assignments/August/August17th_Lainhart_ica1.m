%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Caleb Lainhart
%8/17/2023
%August17th_Lainhart_ica1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Start of function outputs the 3 variables needed and inputs the 2
%variables given
function [side_b,side_c,angle_b] = August17th_Lainhart_ica1(angle_a,side_a)
%finds side b using the tangent property tan= opposite/adjacent
side_b= (side_a*12)/tand(angle_a);
%finds side c using the sine property sin = opposite/hypotenuse
side_c= (side_a*12)/sind(angle_a);
%finds the angle b by making sure all 3 angles add up to 180(simplified
%because angle c is 90 degrees every time)
angle_b= 90-angle_a;
end