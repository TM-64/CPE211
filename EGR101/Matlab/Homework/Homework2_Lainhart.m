%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Caleb Lainhart
%10/7/2023
%Homework2_Lainhart
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Predeclerations
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%declares all of my class names
class =["EGR101","FYE101","Calculus","Chemistry","History","Chemistry lab"];
%declares how much time a week each class takes in minutes
classTime =[160,160,240,225,160,240];
%declares other activities and things that I need/ want to do
other = ["Space Hardware Club","Eating","Talk with Girfriend"];
%declares the time in minutes those other activities require
otherTime =[420,840,840];
%Determines how many hours outside of class each class requires  which is 3
%hours for every hour in class
reccTime = (classTime./60).*3;
%declares the time left in the week after sleep
timeLeft=102;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Main
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%loops through the classes and displays how much time outside of class it
%is reccomended to study
for i=1:1:length(class)
    fprintf("The reccomended study time for %s is %.2f hours\n",class(i),reccTime(i));
    %subtracts the recomended time outside of class and the class time from
    %the amount of time left in the week
    timeLeft =timeLeft-reccTime(i)-(classTime(i)/60);
end
%subtracts the time spent in the other activities from the time left in the
%week
for j=1:1:length(otherTime)
    timeLeft= timeLeft-(otherTime(j)/60);
end
%Displays the time left over after all classes studying and
%responsibilities
fprintf("The amount of time left over after all responsibilities: %.0f hours\n",timeLeft);
%checks if it is practical by checking if i would have more than 20 hours
%in the week for other things besides studying or responsibilities
if(timeLeft>20)
    fprintf("it is practical for me to spend 3 hours per hour of class studying\n");
else
    fprintf("it is not practical for me to spend 3 hours per hour of class studying\n");
end
%checks if it would be mathamatically possible to do by checking if i have
%enough time in the week without any relaxation, but with my
%responsibilities
if(timeLeft>=0)
    fprintf("it is mathematically possible for me to spend 3 hours per hour of class studying\n");
else
    fprintf("it is not mathematically possible for me to spend 3 hours per hour of class studying\n");
end
% checks if it would be theoretically possible by checking if i would have
% enough time to accomplish it by not calling my girlfriend at all during
% the week
if(timeLeft+otherTime(3)/60>=0)
    fprintf("it is theoretically possible for me to spend 3 hours per hour of class studying\n");
else
    fprintf("it is not theoretically possible for me to spend 3 hours per hour of class studying\n");
end