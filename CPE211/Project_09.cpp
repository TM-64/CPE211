// ****************************************
// Program Title: Project 09
// Project File: Project_09.cpp
// Name: Caleb Lainhart
// Course Section: CPE-211-02 
// Lab Section: 3
// Due Date: 04/09/24 
// program description: Description of 
// What the program does.
// ****************************************
#include <iostream>
#include <string>
#include <iomanip>
#include <fstream>
#include <climits>

using namespace std;
typedef int IntMatrix[3][3];

void openIn(ifstream &);
void readMatrix(IntMatrix, ifstream &);
void printMatrix(IntMatrix);
int determinant(IntMatrix);
void transpose(IntMatrix);
void addition(IntMatrix, IntMatrix);
void subtraction(IntMatrix, IntMatrix);
void multiplication(IntMatrix, IntMatrix);


int main()
{
    ifstream inFile;
    openIn(inFile);
    IntMatrix matrixA, matrixB;
    int selector;
    inFile >> selector;
    while(!inFile.eof()){
        cout << string(47,'*') << endl;
        switch (selector){
            case 1: //determinant
                    cout << string(15,'*') << " Find Determinant **************\n" << endl;
                    readMatrix(matrixA, inFile);
                    cout << "Input matrix:" << endl;
                    printMatrix(matrixA);
                    cout << "The determinant is: " << determinant(matrixA) << endl << endl;
                    break;
            case 2: //transpose
                    cout << string(15,'*') << " Find Transpose ****************\n" << endl;
                    readMatrix(matrixA, inFile);
                    cout << "Input matrix:" << endl;
                    printMatrix(matrixA);
                    transpose(matrixA);
                    cout << "The transpose is:" << endl;
                    printMatrix(matrixA);
                    break;
            case 3: //addition
                    cout << string(15,'*') << " Add Two Matrices **************\n" << endl;
                    readMatrix(matrixA, inFile);
                    readMatrix(matrixB, inFile);
                    cout << "Matrix A:" << endl;
                    printMatrix(matrixA);
                    cout << "Matrix B:" << endl;
                    printMatrix(matrixB);
                    cout << "Matrix A + Matrix B:" << endl;
                    addition(matrixA,matrixB);
                    printMatrix(matrixA);
                    break;
            case 4: // subtraction
                    cout << string(15,'*') << " Subtract Two Matrices *********\n" << endl;
                    readMatrix(matrixA, inFile);
                    readMatrix(matrixB, inFile);
                    cout << "Matrix A:" << endl;
                    printMatrix(matrixA);
                    cout << "Matrix B:" << endl;
                    printMatrix(matrixB);
                    cout << "Matrix A - Matrix B:" << endl;
                    subtraction(matrixA,matrixB);
                    printMatrix(matrixA);
                    break;
            case 5: //multiplication
                    cout << string(15,'*') << " Multiply Two Matrices *********\n" << endl;
                    readMatrix(matrixA, inFile);
                    readMatrix(matrixB, inFile);
                    cout << "Matrix A:" << endl;
                    printMatrix(matrixA);
                    cout << "Matrix B:" << endl;
                    printMatrix(matrixB);
                    cout << "Matrix A * Matrix B:" << endl;
                    multiplication(matrixA,matrixB);
                    printMatrix(matrixA);
                    break;
        }
        cout << string(15,'*') << " Task Finished *****************\n";
        cout << string(47,'*') << endl;
        inFile >> selector;
        if(!inFile.eof()){
            cout << endl;
        }
    }

    return 0;
}

void openIn(ifstream &inFile){
    string fileName;
    cout << endl << "Enter name of input file or Control-C to quit program: ";
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
        cout << endl << "Enter name of input file or Control-C to quit program: ";
        cin >> fileName;
        cout << fileName << endl << endl;
        inFile.open(fileName);
    }
}

void printMatrix(IntMatrix matrix){
    for(int r = 0; r<3; r++){
       for(int c = 0; c<3; c++){
            cout << left << setw(6) << matrix[r][c];
        } 
        cout << endl;
    }
    cout << endl;
}
void readMatrix(IntMatrix matrix, ifstream &inFile){
    int temp;
    for(int r = 0; r<3; r++){
       for(int c = 0; c<3; c++){
            inFile >> temp;
            matrix[r][c] = temp;
        } 
    }
}
int determinant(IntMatrix matrix){
    int result;
    result = (matrix[0][0]*matrix[1][1]*matrix[2][2]) + (matrix[0][1]*matrix[1][2]*matrix[2][0]) 
        + (matrix[0][2]*matrix[1][0]*matrix[2][1]) - (matrix[0][2]*matrix[1][1]*matrix[2][0])
        - (matrix[0][1]*matrix[1][0]*matrix[2][2]) - (matrix[0][0]*matrix[1][2]*matrix[2][1]);
    return result;
}
void transpose(IntMatrix matrix){
    IntMatrix temp;
    for(int r = 0; r<3; r++){
       for(int c = 0; c<3; c++){
            temp[c][r] = matrix[r][c];
        } 
    }
    for(int r = 0; r<3; r++){
       for(int c = 0; c<3; c++){
            matrix[r][c] = temp[r][c];
        } 
    }
}
void addition(IntMatrix matrixA, IntMatrix matrixB){
    for(int r = 0; r<3; r++){
       for(int c = 0; c<3; c++){
            matrixA[r][c] += matrixB[r][c];
        } 
    }

}
void subtraction(IntMatrix matrixA, IntMatrix matrixB){
    for(int r = 0; r<3; r++){
       for(int c = 0; c<3; c++){
            matrixA[r][c] -= matrixB[r][c];
        } 
    }

}
void multiplication(IntMatrix matrixA, IntMatrix matrixB){
    IntMatrix temp;
    for(int r = 0; r<3; r++){
       for(int c = 0; c<3; c++){
            temp[r][c] = 0;
            for(int m = 0; m<3; m++){
                temp[r][c] += (matrixA[r][m]*matrixB[m][c]);
            } 
        } 
    }
    for(int r = 0; r<3; r++){
       for(int c = 0; c<3; c++){
            matrixA[r][c] = temp[r][c];
       }
    }

}