// **************************************************************
// **************************************************************
//
// **********  DO NOT MODIFY ANYTHING IN THIS SECTION
//
// solution cpp file for project 10
// all helper function definitions go in this file

// all header files are in the project_10.h header file
#include "Project_10.h"

// using namespace std is in the header file Project_10.h

// **************************************************************
// **********  DO NOT MODIFY ANYTHING ABOVE THIS LINE
// **************************************************************

// **************************************************************
// **********   PUT ALL FUNCTION DEFINITIONS BELOW THIS COMMENT
// **************************************************************

// Function definitions start here. 


// *****************************************
// ************** CONTRUCTORS **************
// *****************************************
Money::Money(){
    pennies = 0;
    nickels = 0;
    dimes = 0;
    quarters = 0;
}
Money::Money(int penny, int nickel, int dime, int quarter){
    pennies = penny;
    nickels = nickel;
    dimes = dime;
    quarters = quarter;
}     
Money::Money(int penny, int nickel, int dime){
    pennies = penny;
    nickels = nickel;
    dimes = dime;
    quarters = 0;
}      // pennies, nickels, dimes
Money::Money(int penny, int nickel){
    pennies = penny;
    nickels = nickel;
    dimes = 0;
    quarters = 0;
}      // pennies, nickels
Money::Money(int penny){
    pennies = penny;
    nickels = 0;
    dimes = 0;
    quarters = 0;
}      // pennies


// *****************************************
// ************** TRANSFORMERS **************
// *****************************************
void Money::SetMoney(int penny, int nickel, int dime, int quarter){
    pennies = penny;
    nickels = nickel;
    dimes = dime;
    quarters = quarter;
}
// order for add money is pennies, nickels, dimes and quarters
void Money::AddMoney(int penny, int nickel, int dime, int quarter){
    pennies += penny;
    nickels += nickel;
    dimes += dime;
    quarters += quarter;
} // all 4
void Money::AddMoney(int penny, int nickel, int dime){
    pennies += penny;
    nickels += nickel;
    dimes += dime;
}  // no quarters
void Money::AddMoney(int penny, int nickel){
    pennies += penny;
    nickels += nickel;
}  // no dimes or quarters
void Money::AddMoney(int penny){
    pennies += penny;
} // pennies only


// *****************************************
// ************** OBSERVERS *******************
// *****************************************
float Money::GetDollarTotal() const{
    float moola = 0;
    moola += pennies * .01;
    moola += nickels * .05;
    moola += dimes * .10;
    moola += quarters * .25;
    return moola;
}
void Money::WriteCoinTotals() const{
    cout << "Number of Pennies: " << pennies << endl;
    cout << "Number of Nickels: " << nickels<< endl;
    cout << "Number of Dimes: " << dimes << endl;
    cout << "Number of Quarters: " << quarters << endl;
}

        // write out total dollar amount of the coins.
void Money::WriteDollarTotal() const{
    cout << "The dollar amount of the coins is: $" << fixed << setprecision(2) << GetDollarTotal() << endl;
}
        // compare the calling object dollar amount to the parameter dollar amount
int Money::CompareTotals(Money moneyVar) const{
    if(GetDollarTotal() == moneyVar.GetDollarTotal()){
        return 0;
    }else if(GetDollarTotal()< moneyVar.GetDollarTotal()){
        return -1;
    }else{
        return 1;
    }
}
