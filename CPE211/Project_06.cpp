// ****************************************
// Program Title: Project 06
// Project File: Project_06.cpp
// Name: Caleb Lainhart
// Course Section: CPE-211-02 
// Lab Section: 3
// Due Date: 02/20/24 
// program description: Takes in an input  
// file of student names and scores and 
// an output file and calculates the score
// for each student and outputs it to the 
// output file
// ****************************************
#include <iostream>
#include <iomanip>
#include <fstream>
#include <climits>

using namespace std;
int main(int argc, char *argv[])
{
    if(argc != 3){
        cout << endl;
        cout << string(9,'*') << " Command Line Argument Error "
        << string(9,'*') << endl;
        cout << "==> Incorrect number of Command Line Arguments!\n";
        cout << "==> Command for running the program is:\n";
        cout << "==> ./Project_06 inputFileName outputFileName\n";
        cout << string(47,'*') << endl << endl;
        return 1;
    }

    string inputFileName = argv[1];
    string outputFileName = argv[2];

    ifstream inFile;
    ofstream outFile;

    cout << endl << "Opening Input File: " << inputFileName 
    << endl << endl;
    inFile.open(inputFileName);

    while(inFile.fail()){
        cout << string(15,'*') << " File Open Error "
        << string(15,'*') << endl;
        cout << "==> Input file failed to open properly!!\n";
        cout << "==> Attempted to open file: " << inputFileName << endl;
        cout << "==> Please try again...\n";
        cout << string(47,'*') << endl << endl;
        
        inFile.clear();
        cout << "Enter the name of the input file: ";
        cin >> inputFileName;
        cout << inputFileName << endl << endl;
        inFile.open(inputFileName);
    }

    cout << "Opening Output File: " << outputFileName 
    << endl << endl;

    outFile.open(outputFileName);


    while(outFile.fail()){
        cout << string(15,'*') << " File Open Error "
        << string(15,'*') << endl;
        cout << "==> Output file failed to open properly!!\n";
        cout << "==> Attempted to open file: " << outputFileName << endl;
        cout << "==> Please try again...\n";
        cout << string(47,'*') << endl << endl;

        outFile.clear();
        cout << "Enter the name of the output file: ";
        cin >> outputFileName;
        cout << outputFileName << endl << endl;
        outFile.open(outputFileName);
    }

    int quizNum, hmwNum, examNum, maxScore;
    inFile >> quizNum;
    if(inFile.eof()){
        outFile << "Input file " << inputFileName << " is empty." << endl;
        cout << string(13,'*') << " Input File Is Empty "
        << string(13,'*') << endl;
        cout << "==> The input file is empty.\n";
        cout << "==> Terminating the program." << endl;
        cout << string(47,'*') << endl << endl;
        return 1;
    }
    inFile >> hmwNum >> examNum >> maxScore;

    outFile << left << fixed << setprecision(2);

    outFile << setw(3) << "#" << setw(12) << "Last" << setw(7) << "First"
    << setw(6) << "Quiz" << setw(6) << "HW" << setw(6) << "Exam"
    << setw(7) << "Total" << "Average" << endl;

    outFile << setw(3) << "-" << setw(12) << "----------" << setw(7) << "-----"
    << setw(6) << "----" << setw(6) << "---" << setw(6) << "----"
    << setw(7) << "-----" << "-------" << endl;

    string lastName, firstName;
    int studCount = 0;
    int scoreCount, sum, ph, summy;
    float classAve = 0;
    inFile >> lastName >> firstName;
    if(inFile.fail()){
        cout << "Input file did not contain any students!" << endl;
        outFile << "Input file did not contain any students!" << endl;
        return 1;
    }
    while(!inFile.fail()){
        studCount++;

        outFile << setw(3) << studCount << setw(12) << lastName.substr(0,10) 
        << setw(7) << firstName.substr(0,5);

        
        summy = 0;

        scoreCount = 1;
        sum = 0;
        while(scoreCount <= quizNum){
            inFile >> ph;
            sum = sum + ph;
            scoreCount++;
        }
        summy = summy + sum;
        outFile << setw(6) << sum;

        scoreCount = 1;
        sum = 0;
        while(scoreCount <= hmwNum){
            inFile >> ph;
            sum = sum + ph;
            scoreCount++;
        }
        summy = summy + sum;
        outFile << setw(6) << sum;

        scoreCount = 1;
        sum = 0;
        while(scoreCount <= examNum){
            inFile >> ph;
            sum = sum + ph;
            scoreCount++;
        }
        summy = summy + sum;
        outFile << setw(6) << sum << setw(7) << summy;

        float persAve = (float(summy)/maxScore)*100;
        classAve = classAve + persAve;
        outFile << persAve << endl;

        inFile >> lastName >> firstName;
    }

    outFile << setw(3) << "-" << setw(12) << "----------" << setw(7) << "-----"
    << setw(6) << "----" << setw(6) << "---" << setw(6) << "----"
    << setw(7) << "-----" << "-------" << endl << endl;

    classAve = classAve/studCount;
    outFile << "Class Average = " << classAve << endl;
    return 0;
}
