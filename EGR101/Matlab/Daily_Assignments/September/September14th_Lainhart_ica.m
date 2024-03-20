%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Caleb Lainhart
%9/27/2023
%September14th_Lainhart_ica
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [check_output,matrix_val] = September14th_Lainhart_ica()
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Predecleration
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
[matrix_val,mean_val,median_val] = matrix_gen();%runs the provided matrix generator
[r,c]=size(matrix_val);%finds the size of the matrix so it can be fully indexed through later
check_output(1:r,1:c) = 0;%creates an array with the same size as the provided matrix and set all values to 0
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Main
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%indexes through all of the rows in the matrix
for i=1:1:r
    %indexed through all of the columns in the matrix
    for k=1:1:c
        %checks if the value in the matrix is more than the mean val and
        %then sets the corresponding index in the output to 2
        if(matrix_val(i,k)>mean_val)
            check_output(i,k) = 2;
        %checks if the value in the matrix is more than the median val and
        %then sets the corresponding index in the output to 3
        elseif(matrix_val(i,k)>median_val)
            check_output(i,k) = 3;
        %checks if the value in the matrix is less than the median and mean val and
        %then sets the corresponding index in the output to 1
        else
            check_output(i,k) = 1;
        end
    end
end

end