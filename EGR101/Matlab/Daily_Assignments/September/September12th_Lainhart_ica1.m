%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Caleb Lainhart
%9/27/2023
%September12th_Lainhart_ica
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [plot_values] = September12th_Lainhart_ica1(plot_flag)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Predecleration
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
time = [0:.001:15];%creates an array of 1000 time values per second
y_array=[]; % creates an empty array for the y values
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Main
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%a for loop for indexing through the time array and calculating the
%appropriate y value associated with it
for i=1:1:length(time)
    %if statement to check if its in the first equation's range
    if(time(1,i)<=1)
        y_array(1,i) = exp(time(1,i)*2+1);
    %elseif statement to check if its in the second equation's range
    elseif(time(1,i)<=2)
        y_array(1,i) = (time(1,i)^2)*-17.829+time(1,i)*48.4015-10.487;
    %else to account for the rest of the range of time in the final
    %equation
    else
        y_array(1,i) = 2*sin(120*pi*time(1,i))+15;
    end
    
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Output
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%takes the input of true or false and if true it plots the graph if false
%it doesnt plot the graph
if(plot_flag)
    plot(time,y_array);
    xlabel("Time_{sec}");
    ylabel("Y Value");
    title("September 12th Graph","Color",'b');
end
plot_values= [time;y_array];% puts the x and y values into one 2x15001 array and outputs it
end