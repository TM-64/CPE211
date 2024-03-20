// ****************************************
// Program Title: Project 03 Stock Calculator
// Project File: Project_03.cpp
// Name: Caleb Lainhart
// Course Section: CPE-211-02 
// Lab Section: 3
// Due Date: 01/28/24 
// program description: Calculates the 
// total cost and profit from buying and 
// selling stocks
// ****************************************

#include <iostream>
#include <iomanip>
#include <string>
using namespace std;

//Main Program
int main()
{
  //Input Variables
  string stockName;
  int numStock;
  float purchPrice;
  float sellPrice;

  //Output Variables
  float buyComm;
  float totalCost;
  float sellComm;
  float totalReturn;
  float netProfit;
  float tax;

  //Displays the header of the file
  cout << endl;
  cout << string(25,'*') << endl;
  cout << "Stock Calculations" << endl;
  cout << string(25,'*') << endl << endl;
 
  //Sets the output line to left defined and all floats to output 2 decimal points
  cout << fixed << left << setprecision(2);

  //Takes the input values and displays them
  cout << "Enter the name of the stock: ";
  cin >> stockName;
  cout << stockName << endl;

  cout << "Enter the number of shares purchased: ";
  cin >> numStock;
  cout << numStock << endl;

  cout << "Enter the buy price per share: ";
  cin >> purchPrice;
  cout << purchPrice << endl;

  cout << "Enter the sell price per share: ";
  cin >> sellPrice;
  cout << sellPrice << endl;
  cout << endl;

  //Does all of the calculations for the program
  float buyCost = numStock*purchPrice;
  buyComm = buyCost*.02;
  totalCost = buyCost+ buyComm;
  float sellCost = numStock*sellPrice;
  sellComm = sellCost*.015;
  totalReturn = sellCost - sellComm;
  netProfit = totalReturn - totalCost;
  tax = netProfit*.25;
  
  //
  cout << "Results for " << numStock << " shares of " << stockName << ":" << endl;
  cout << string(35,'-') << endl;
  cout << setfill('.'); 
  cout << setw(20) << "Buy Commission" << "$" << buyComm << endl;
  cout << setw(20) << "Total Cost" << "$" << totalCost << endl;
  cout << setw(20) << "Sell Commission" << "$" << sellComm << endl;
  cout << setw(20) << "Total Return" << "$" << totalReturn << endl;
  cout << setw(20) << "Net Profit/Loss" << "$" << netProfit << endl;
  cout << setw(20) << "Tax/Credit" << "$" << tax << endl << endl;
  return 0;
}