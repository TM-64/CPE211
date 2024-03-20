####################################################################
#Caleb Lainhart
#October 17th ICA
#10/17/23
####################################################################
#Library Calls
####################################################################
from string import ascii_lowercase
from string import ascii_uppercase
####################################################################
#Predeclarations
####################################################################
#Sets the valueof the string being checked
words = 'My Social Security # is 56$%;//'
#Creates variables for the counts being checked
#Normal Assignment
consonantCount = 0
vowelCount = 0
nonLetters = 0
#Hardmode Assignment
upperCaseCount = 0
lowerCaseCount = 0
specialCharCount = 0
miscCharCount = 0
#Creates the strings that the given string will be checked against
vowel = 'aeiou'
consonant = 'bcdfghjklmnpqrstvwxyz'
special = '1234567890!@#$%^&*()'
####################################################################
#Work Done
####################################################################
#Iterates through the entire string character by character
for char in words:
    #Checks if the character is a lowercase letter
    if(char in ascii_lowercase):
        lowerCaseCount+=1
    #checks if the character is a uppercase letter
    elif(char in ascii_uppercase):
        upperCaseCount+=1
    #a case for when the character is not a letter
    else:
        nonLetters+=1
        #checks if the character is a special character
        if(char in special):
            specialCharCount+=1
        #a case for when the character is a miscelaneous character
        else:
            miscCharCount+=1
    #checks if the character is a vowel
    if(char in vowel):
        vowelCount+=1
    #checks if the character is a consonant
    elif(char in consonant):
        consonantCount+=1
####################################################################
#Output
####################################################################
#Puts all of the counts into a single array
output = [consonantCount,vowelCount,nonLetters,upperCaseCount,lowerCaseCount,
          specialCharCount,miscCharCount]
#Prints out all of the counts
print('number of consonants:',output[0])
print('number of vowels:',output[1])
print('number of non letters:',output[2])
print('number of upper case letters:',output[3])
print('number of lower case letters:',output[4])
print('number of special characters:',output[5])
print('number of misc characters:',output[6])
