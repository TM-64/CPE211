%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Caleb Lainhart
%9/28/2023
%Exam2_Lainhart
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [] = Exam2_Lainhart(freq1,freq2)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Predeclerations
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%creates empty arrays for each device that will be added to later
dev1 = [];
dev2 = [];
%creates two empty temporary arrays that will be changed everytime the device
%functions are called
temp1 = [];
temp2 = [];
%Creates the time variable and initializes it at 0. the time value
%represents .1 miliseconds so if time = 20 its actually 2 miliseconds or
%0.002 seconds
time = 0;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Main
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%the while loop continually runs over and over until it breaks
while(1)
    %continues running the program while the time is less than 25 seconds
    if(time<=250000)
        %Checks if its time to sample the first device
        if(floor(mod(time,10000/freq1))==0)
            %samples the first device and sets the first temporary array
            %to the x, y, and z values
           [temp1(1),temp1(2),temp1(3)] = device1(time/10000);
        end
        %Checks if its time to sample the second device
        if(floor(mod(time,10000/freq2))==0)
            %samples the second device and sets the second temporary array
            %to the x, y, and z values
            [temp2(1),temp2(2),temp2(3)] = device2(time/10000);
        end
        %adds the temporary variables to the final N by 3 array
        dev1(height(dev1)+1,:) = temp1;
        dev2(height(dev2)+1,:) = temp2;
        %increments the time by .1 miliseconds
        time = time+1;
    else
        %if the time is greater than 25 seconds
        break
    end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Graphs
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Graphs the two devices in seperate lines on the same 3D graph
plot3(dev1(:,1),dev1(:,2),dev1(:,3),'b',...
    dev2(:,1),dev2(:,2),dev2(:,3),'r');
%labels the graph
title('Device 1 vs. Device 2')
legend('Device1','Device2');
xlabel('X axis');
ylabel('Y axis');
zlabel('Z axis');
end