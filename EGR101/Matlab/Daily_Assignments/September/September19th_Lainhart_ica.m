%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Caleb Lainhart
%9/27/2023
%September19th_Lainhart_ica
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Input
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%creates a variable for the number of bottles you want to start with and
%sets it to whatever you input
numBottles = input("how many Bottle do you start with?\n");
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Main
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%repeats until numBottles equals 0
while(numBottles>0)
    %checks if there is only one bottle left and displays something
    %different for the end
    if(numBottles==1)
        fprintf("%d bottle of beer on the wall, %d bottle of beer.\n",numBottles,numBottles);
        numBottles = numBottles-1;
        fprintf("Take it down pass it around no more bottles of beer on the wall.");
    %normal process, it sings the song then subtracts the bottles by one and then sings the secondhalf of the verse 
    else
        fprintf("%d bottles of beer on the wall, %d bottles of beer.\n",numBottles,numBottles);
        numBottles = numBottles-1;
        fprintf("Take one down pass it around %d bottles of beer on the wall.\n",numBottles);
    end
end