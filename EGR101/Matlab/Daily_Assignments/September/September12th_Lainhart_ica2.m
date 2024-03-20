%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Caleb Lainhart
%9/27/2023
%September12th_Lainhart_ica
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Predeclerations
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
intercept_array = [];%creates a blank array to store all times where the lines intercept
count= 0;%creates a counter to count the amout of times the lines intersect
[x_data,y_data] = load_realdata_912();%runs the function given to us to get the data of the actual line
[plot_values] = September12th_Lainhart_ica(false);%runs my function that gets the values of the expected line
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Main
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%a for loop for indexing through both arrays one by one and seeing at every
%point the lines intersect and setting the corresponding index in the
%intercept array to either true or false
for i=1:1:length(x_data)
    if(y_data(i)==plot_values(2,i))
        intercept_array(i) = true;
    else
        intercept_array(i) = false;
        
    end
end
%plots the two lines on top of each other for a visual refrence
plot(x_data,y_data,'r',plot_values(1,:),plot_values(2,:),'g');
xlabel("Time_{sec}");
ylabel("Y Value");
title("Expected vs. Actual Lines","Color",'b');
legend("Actual","Expected","Location","southeast")
%loops through the intercept array and counts everytime it intercepts
for k=1:1:length(intercept_array)
    if(intercept_array(k)==1)
        count= count+1;
    end
end
%calculates the percent accurary of th eactual line
percAcc = count/length(intercept_array)*100;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Output
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%prints out the findings
fprintf('The lines are the same at %d points and is %2.1f%% accurate to the expected line\n',count,percAcc);
