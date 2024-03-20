// ****************************************
// Program Title: Project 05
// Project File: Project_05.cpp
// Name: Caleb Lainhart
// Course Section: CPE-211-02 
// Lab Section: 3
// Due Date: 02/13/24 
// program description: The Program takes
// in an input file with 3 floats and
// calculates the sum and average of 
// the numbers.
// ****************************************
#include <iostream>
#include <iomanip>
#include <fstream>
#include <cmath>
#include <climits>
using namespace std;
int main(int argc, char *argv[])
{
    //Argument count checker
    //Checks if it has the correct amount of arguments
    if(argc != 3){
        cout << endl;
        cout << string(9,'*') << " Command Line Argument Error "
        << string(9,'*') << endl;
        cout << "==> Incorrect number of Command Line Arguments!\n";
        cout << "==> Command for running the program is:\n";
        cout << "==> ./Project_05 inputFileName outputFileName\n";
        cout << string(47,'*') << endl << endl;
        return 1;
    }
    // Sets up the input and output file names from the arguments
    string inputFileName = argv[1];
    string outputFileName = argv[2];
    
    //Creates a input and output file stream
    ifstream inFile;
    ofstream outFile;

    // says that its opening the input file stream
    cout << endl << "Opening Input File: " << inputFileName 
    << endl << endl;
    //opens the input file as the instream
    inFile.open(inputFileName);
    
    //Checks if the input file fails and prints an error message
    //if it does
    if(inFile.fail()){
        cout << string(15,'*') << " File Open Error "
        << string(15,'*') << endl;
        cout << "==> Input file failed to open properly!!\n";
        cout << "==> Attempted to open file: " << inputFileName << endl;
        cout << "==> Terminating program!!!\n";
        cout << string(47,'*') << endl << endl;
        return 1;
    }
    
    //says that its opening the output file
    cout << "Opening Output File: " << outputFileName 
    << endl << endl;
    //Opens the output file as the outStream
    outFile.open(outputFileName);

    //Checks if the output file fails and prints
    //the error message accordingly
    if(outFile.fail()){
        cout << string(15,'*') << " File Open Error "
        << string(15,'*') << endl;
        cout << "==> Output file failed to open properly!!\n";
        cout << "==> Attempted to open file: " << outputFileName << endl;
        cout << "==> Terminating program!!!\n";
        cout << string(47,'*') << endl << endl;
        return 1;
    }
    //Creates 3 float variables and assigns them to
    //the 3 float values in the file
    float in1, in2, in3;
    inFile.ignore(INT_MAX,'A');
    inFile >> in1;
    inFile.ignore(INT_MAX,'B');
    inFile >> in2;
    inFile.ignore(INT_MAX,'C');
    inFile >> in3;
    
    //Checks if any of the float values are negative
    //and errors out if they are
    if(in1<0||in2<0||in3<0){
        cout << string(15,'*') << " Negative Number "
        << string(15,'*') << endl;
        if(in1<0){
            cout << "==> First number is less than 0\n";
        }
        if(in2<0){
            cout << "==> Second number is less than 0\n";
        }
        if(in3<0){
            cout << "==> Third number is less than 0\n";
        }
        cout << "==> All numbers should be positive" << endl;
        cout << "==> Terminating program!!!\n";
        cout << string(47,'*') << endl << endl;
        return 1;
    }

    //Calculates the sum and average of the 3 numbers
    float sum = (in1 + in2 + in3);
    float average = sum / 3;
    string deterAve; //A variable for the medium low or high

    //determines whether the average is high medium or low
    if(average >= 75){
        deterAve = "High";
    }else if(average>= 25){
        deterAve = "Medium";
    }else{
        deterAve = "Low";
    }
    
    //Writes the output of the program to the output file
    outFile << left << setfill(' ') << fixed <<setprecision(2);
    outFile << string(47,'*') << endl;
    outFile << setw(35) << "The numbers read are:" << in1 << " "
    << in2 << " " << in3 << endl;
    outFile << setw(35) << "The sum of the numbers is:" << sum << endl;
    outFile << setw(35) << "The average of these numbers is:" << average << endl;
    outFile << setw(35) << "This average is:" << deterAve <<endl;
    outFile << string(47, '*') << endl;

    return 0;
}