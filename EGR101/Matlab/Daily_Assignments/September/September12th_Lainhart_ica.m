%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Caleb Lainhart
%9/19/2023
%September12th_Lainhart_ica
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [plot_values] = September12th_Lainhart_ica(plot_flag)
time = [0:.001:15];
y_array=[];
for i=1:1:length(time)
    if(time(1,i)<=1)
        y_array(1,i) = exp(time(1,i)*2+1);
    elseif(time(1,i)<=2)
        y_array(1,i) = (time(1,i)^2)*-17.829+time(1,i)*48.4015-10.487;
    else
        y_array(1,i) = 2*sin(120*pi*time(1,i))+15;
    end
    
end
if(plot_flag)
    plot(time,y_array);
end
plot_values= [time;y_array];
end