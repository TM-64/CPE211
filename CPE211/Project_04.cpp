// ****************************************
// Program Title: Project 04
// Project File: Project04.cpp
// Name: Caleb Lainhart
// Course Section: CPE-211-02 
// Lab Section: 3
// Due Date: 02/04/24 
// program description: Takes in the
// initial velocity and angle and computes
// values using projectile motion
// ****************************************
#include <iostream>
#include <iomanip>
#include <cmath>
#include <string>
using namespace std;
int main()
{
    //Constants
    const double GRAV = 9.80665;
    const double PI = 3.14159265;

    //Inputs
    string titleInfo;// the title info for displaying at the end
    double iVelocity;//The intitial velocity in m/sec
    double iAngle;//The initial angle in degrees

    //Outputs
    double timeHeight;//The time it takes to reach max height in seconds
    double timeDistance;//The time it takes to reach max distance in seconds
    double maxHeight;//The max height it reaches in meters
    double distanceTrav;//The distance traveled in meters

    //Print the header banner
    cout << endl << string(30,'*') << endl;
    cout << string(5,'*') << " Projectile Motion" << endl;
    cout << string(30,'*') << endl << endl;

    cout << fixed << setprecision(3) << left << setfill(' ');

    //Echo print inputs
    cout << "Enter the title line information: ";
    getline(cin,titleInfo,'\n');
    cout << titleInfo << endl;

    cout << "Enter in the velocity (in meters/sec): ";
    cin >> iVelocity;
    cout << iVelocity << endl;

    cout << "Enter in the angle (in degrees): ";
    cin >> iAngle;
    cout << iAngle << endl << endl;

    //Calculations
    timeHeight = (iVelocity*sin(iAngle*PI/180))/GRAV;
    timeDistance = (2*iVelocity*sin(iAngle*PI/180))/GRAV;
    maxHeight = (pow(iVelocity,2)*pow(sin(iAngle*PI/180),2))/(GRAV*2);
    distanceTrav = iVelocity*timeDistance*cos(iAngle*PI/180);

    //Output
    cout << "Results for " << titleInfo << ":" << endl;
    cout << string(13+titleInfo.length(),'-') << endl;
    cout << setw(25) << "Initial Velocity:" << iVelocity << " meters/second" << endl;
    cout << setw(25) << "Starting Angle:" << iAngle << " degrees"<< endl;
    cout << setw(25) << "Time to Max Height:" << timeHeight << " seconds" << endl;
    cout << setw(25) << "Time to Max Distance:" << timeDistance << " seconds"<< endl;
    cout << setw(25) << "Maximum Height:" << maxHeight << " meters" << endl;
    cout << setw(25) << "Distance Traveled:" << distanceTrav << " meters" << endl << endl;


    return 0;
}