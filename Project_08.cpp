// ****************************************
// Program Title: Project_08
// Project File: Project_08.cpp
// Name: Caleb Lainhart
// Course Section: CPE-211-02 
// Lab Section: 3
// Due Date: 03/24/24
// program description: Description of 
// What the program does.
// ****************************************
#include <iostream>
#include <iomanip>
#include <fstream>
#include <climits>

using namespace std;
struct date{
    int month;
    int day;
    int year;
};
struct customer{
    string firstName;
    string lastName;
    int customerId;
    date joinDate;
};
void openIn(ifstream &);
void readCustomer(ifstream &, customer &);
void custOut(customer, customer);
bool testCustomer(customer, customer);
int main()
{  
    ifstream inFile;
    customer cust1;
    customer cust2;

    openIn(inFile);
    readCustomer(inFile, cust1);
    if(inFile.eof()){
        cout << string(16,'*') << " File Is Empty "
        << string(16,'*') << endl;
        cout << "==> Input file did not contain any information.\n";
        cout << "==> Program is terminating!!\n";
        cout << string(47,'*') << endl << endl;
        return 1;
    }
    readCustomer(inFile, cust2);
    custOut(cust1, cust2);
    cout << "Customer 1 is equal to Customer 2:      ";
    if(testCustomer(cust1, cust2)){
        cout << "true" << endl;
    }else{
        cout << "false" << endl;
    }
    return 0;
}
void openIn(ifstream &inFile){
    string fileName;
    cout << endl << "Enter the name of the input file (ctrl-c to exit): ";
    cin >> fileName;
    cout << fileName << endl << endl;
    inFile.open(fileName);
    while(!inFile){
        cout << string(15,'*') << " File Open Error "
        << string(15,'*') << endl;
        cout << "==> Input file failed to open properly!!\n";
        cout << "==> Attempted to open file: "<< fileName << endl;
        cout << "==> Please try again...\n";
        cout << string(47,'*') << endl;
        inFile.clear();
        cout << endl << "Enter the name of the input file (ctrl-c to exit): ";
        cin >> fileName;
        cout << fileName << endl << endl;
        inFile.open(fileName);
    }
}
void readCustomer(ifstream &inFile, customer &custee){
    inFile >> custee.firstName >> custee.lastName >> custee.customerId;
    inFile >> custee.joinDate.month >> custee.joinDate.day >> custee.joinDate.year;
}
void custOut(customer cust1, customer cust2){
    cout << string(47,'*') << endl;
    cout << string(13,'*') << " Customer Comparison "
    << string(13,'*') << endl;
    cout << string(47,'*') << endl << endl;
    cout << "Customer 1 information:" << endl;
    cout << string(23,'-')<< endl;
    cout << "Name: " << cust1.firstName << " "
    << cust1.lastName << "(" << cust1.customerId << ")" << endl;
    cout << "Join: " << cust1.joinDate.month << "/" << cust1.joinDate.day
    << "/" << cust1.joinDate.year << endl << endl;
    cout << "Customer 2 information:" << endl;
    cout << string(23,'-')<< endl;
    cout << "Name: " << cust2.firstName << " "
    << cust2.lastName << "(" << cust2.customerId << ")" << endl;
    cout << "Join: " << cust2.joinDate.month << "/" << cust2.joinDate.day
    << "/" << cust2.joinDate.year << endl << endl;
}
bool testCustomer(customer cust1, customer cust2){
    if(cust1.firstName.compare(cust2.firstName) == 0){
        if(cust1.lastName.compare(cust2.lastName) == 0){
            if(cust1.customerId == cust2.customerId){
                if(cust1.joinDate.month == cust2.joinDate.month){
                    if(cust1.joinDate.day == cust2.joinDate.day){
                        if(cust1.joinDate.year == cust2.joinDate.year){
                            return true;
                        }
                    }
                }
            }
        }
    }
    return false;
}