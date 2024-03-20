####################################################################
#Caleb Lainhart
#Lainhart_PythonFinal_2
#11/15/23
####################################################################
#Predeclerations
####################################################################
#Creates a list of colors 
color_list = ['red','orange','yellow','blue','green','green','blue','green',
              'purple','indigo','yellow','green','indigo','purple','orange',
              'orange','blue']
#creates an empty key list for the dictionary
keyList = []
#creates an empty color dictionary
colorDict = {}
####################################################################
#Main
####################################################################
#checks if the color is in the key list, if it isnt it adds it to the keylist
for color in color_list:
    if(color not in keyList):
        keyList.append(color)
#counts up the amount of time each color appears in the color list
for key in keyList:
    colorDict[key] = color_list.count(key)
####################################################################
#Output
####################################################################
#prints out the colors and their counts
print(colorDict)
