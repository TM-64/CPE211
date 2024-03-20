// ****************************************
// Program Title: Project 07
// Project File: Project_07.cpp
// Name: Caleb Lainhart
// Course Section: CPE-211-02 
// Lab Section: 3
// Due Date: 03/07/2024 
// program description: A program that 
// prints out a menu of processes to either
// count vowels or consonants in a given 
// input file and displays the count and
// average of either.
// ****************************************
#include <iostream>
#include <iomanip>
#include <fstream>
#include <climits>
#include <cctype>
using namespace std;
void menuPrint();
int intRead();
bool openIn(ifstream &,string &);
void fileProcess(int,ifstream &);
int main()
{
    int choice;
    string fileName;
    ifstream inFile;
    menuPrint();
    cout << "Input your selection: ";
    choice = intRead();
    while(choice != 0){
        if((choice == 1) || (choice == 2)){
            if(openIn(inFile, fileName)){
                cout << fileName << endl;
                cout << endl;
                cout << string(14,'*') << "  File Open Error  "
                << string(14,'*') << endl;
                cout << "==> Input file failed to open properly!!\n";
                cout << "==> Attempted to open file: "<< fileName << endl;
                cout << "==> Selected operation has been canceled!!\n";
                cout << string(47,'*') << endl;
            }else {
                cout << fileName << endl;
                fileProcess(choice, inFile);
            }
        }else{
            cout << endl;
            cout << string(13,'*') << "  Invalid Selection  "
            << string(13,'*') << endl;
            cout << "==> Invalid integer value entered\n";
            cout << "==> Please enter 0, 1 or 2!\n";
            cout << string(47,'*') << endl; 
        }
        inFile.close();
        inFile.clear();
        menuPrint();
        cout << "Input your selection: ";
        choice = intRead();
    }
    cout << endl;
    cout << "Quit selected.  Terminating program now..." << endl << endl;
return 0;
}
void menuPrint(){
    cout << endl;
    cout << string(18,'*') << "  Options  "
    << string(18,'*') << endl;
    cout << "0. Exit Program\n";
    cout << "1. Count number of vowels\n";
    cout << "2. Count number of consonants\n";
    cout << string(47,'*') << endl << endl;
}
int intRead(){
    int choice;
    char test;
    cin >> choice;
    while(cin.fail()){
        cin.clear();
        cin.get(test);
        cout << test << endl;
        cin.ignore(INT_MAX,'\n');

        cout << endl;
        cout << string(13,'*') << "  Invalid Selection  "
        << string(13,'*') << endl;
        cout << "==> Invalid character entered!!\n";
        cout << "==> Please enter 0, 1 or 2\n";
        cout << string(47,'*') << endl;

        menuPrint();
        cout << "Input your selection: ";
        cin >> choice;
    }
    cout << choice << endl;
    cin.ignore(INT_MAX,'\n');
    return choice;
}
bool openIn(ifstream &inFile, string &fileName){
    cout << "Enter the name of the input file now: ";
    cin >> fileName;
    inFile.open(fileName);
    return inFile.fail();

}
void fileProcess(int select, ifstream &inFile){
    int lineCount = 0;
    int consCount = 0;
    int vowCount = 0;
    char test;
    float ave;
    inFile.get(test);
    if(inFile.fail()){
        cout << endl;
        cout << string(15,'*') << "  File Is Empty  "
        << string(15,'*') << endl;
        cout << "==> Input file is empty\n";
        cout << "==> No information to process!\n";
        cout << string(47,'*') << endl;
        
    }else{
        while(!inFile.eof()){
            test = tolower(test);
            if(test == 97|| test ==101||test ==105||test ==111||test ==117){
                vowCount++;
            }else if(test>97&&test<123){
                consCount++;
            }else if(test == 10){
               lineCount++;
            }
            inFile.get(test);
        }
        cout << fixed << setprecision(3)<< endl;
        if(select == 1){
            ave = float(vowCount)/lineCount;
            cout << "Counting Number of Vowels" << endl;
            cout << string(25,'-') << endl;
            cout << "There are " << vowCount << " vowels in the file" << endl;
            cout << "There are " << lineCount << " lines in the file" << endl;
            cout << "This is an average of " << ave << " vowels per line" << endl;
            cout << string(25,'-') << endl;


        }else if(select == 2){
            ave = float(consCount)/lineCount;
            cout << "Counting Number of Consonants" << endl;
            cout << string(29,'-') << endl;
            cout << "There are " << consCount << " consonants in the file" << endl;
            cout << "There are " << lineCount << " lines in the file" << endl;
            cout << "This is an average of " << ave << " consonants per line" << endl;
            cout << string(29,'-') << endl;
        }
    }
}
