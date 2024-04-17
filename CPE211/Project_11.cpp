// ****************************************
// Program Title: Project 11
// Project File: Project_11.cpp
// Name: Caleb Lainhart
// Course Section: CPE-211-02 
// Lab Section: 3
// Due Date: 04/28/24
// program description: Description of 
// What the program does.
// ****************************************
#include <iostream>
#include <string>
#include <iomanip>
#include <fstream>
#include <climits>
#include <cmath>
using namespace std;

const double PI = 3.14159265;

void openIn(ifstream &);
void math(ifstream &);
void trig(ifstream &);


int main()
{
    ifstream inFile;
    openIn(inFile);
    string opp;
    inFile >> opp;
    if(inFile.eof()){
        cout << endl << string(13,'*') << " Input File Is Empty "
        << string(13,'*') << endl;
        cout << "==> The input file is empty.\n";
        cout << "==> There is no information to process.\n";
        cout << "==> Terminating the program!!!\n";
        cout << string(47,'*') << endl << endl;
        return 1;
    }
    while(!inFile.eof()){
        if(opp == "Math"){
            math(inFile);
        }else if(opp == "Trig"){
            trig(inFile);
        }else{
            cout << "Invalid Calculation Type: " << opp;
            inFile.ignore(INT_MAX,'\n');
        }
        inFile >> opp;
        if(!inFile.eof()){
            cout << endl;
        }
    }
    cout<< endl << endl;
    return 0;
}
void openIn(ifstream &inFile){
    string fileName;
    cout << endl << "Enter the name of the input file now: ";
    cin >> fileName;
    cout << fileName << endl << endl;
    inFile.open(fileName);
    while(!inFile){
        cout << endl << string(15,'*') << " File Open Error "
        << string(15,'*') << endl;
        cout << "==> Input file failed to open properly!!\n";
        cout << "==> Attempted to open file: "<< fileName << endl;
        cout << "==> Please try again...\n";
        cout << string(47,'*') << endl;
        inFile.clear();
        cout << endl << "Enter the name of the input file now: ";
        cin >> fileName;
        cout << fileName << endl << endl;
        inFile.open(fileName);
    }
}
void math(ifstream &inFile){
    char ope;
    double val1, val2, ans;
    inFile >> ope;
    if(ope == '+'){
        inFile >> val1 >> val2;
        ans = val1 + val2;
        cout << "Add: " << val1 << "+" << val2 << " = " << ans;
    }else if(ope == '-'){
        inFile >> val1 >> val2;
        ans = val1 - val2;
        cout << "Sub: " << val1 << "-" << val2 << " = " << ans;
    }else if(ope == '*'){
        inFile >> val1 >> val2;
        ans = val1 * val2;
        cout << "Mul: " << val1 << "*" << val2 << " = " << ans;
    }else if(ope == '/'){
        inFile >> val1 >> val2;
        ans = val1 / val2;
        cout << "Div: " << val1 << "/" << val2 << " = " << ans;
    }else if(ope == '%'){
        inFile >> val1 >> val2;
        ans = int(val1) % int(val2);
        cout << "Mod: " << val1 << "%" << val2 << " = " << ans;
    }else{
        cout << "Invalid Operator for Math Operations: " << ope;
    }
    inFile.ignore(INT_MAX,'\n');
}
void trig(ifstream &inFile){
    char ope, rade;
    double angle, ans;
    inFile >> ope >> rade >> angle;
    if(rade == 'd'){
        angle = (angle * PI)/180;
    }
    if(ope == 's'){
        ans = sin(angle);
        cout << "sin(";
        if(rade == 'd'){
            angle = (angle * 180)/PI;
            cout << "degrees): ";
        }else{
            cout << "radians): ";
        }
        cout << "sin(" << angle << ") = " << ans;

        
    }else if(ope == 'c'){
        ans = cos(angle);
        cout << "cos(";
        if(rade == 'd'){
            angle = (angle * 180)/PI;
            cout << "degrees): ";
        }else{
            cout << "radians): ";
        }
        cout << "cos(" << angle << ") = " << ans;
    }else if(ope == 't'){
        ans = tan(angle);
        cout << "tan(";
        if(rade == 'd'){
            angle = (angle * 180)/PI;
            cout << "degrees): ";
        }else{
            cout << "radians): ";
        }
        cout << "tan(" << angle << ") = " << ans;
    }else{
        cout << "Invalid Operator for Trig Operations: " << ope;
    }
    inFile.ignore(INT_MAX,'\n');
    

}