####################################################################
#Caleb Lainhart
#October 5th ICA
#10/16/23
####################################################################
#Predeclerations
####################################################################
#Creates a list of all of the months
months_list = ['January','February','March','April','May','June','July',
               'August','September','October','November','December']
#Creates an empty array for the winter months
winter = []
#Creates an empty array for the spring months
spring = []
#Creates an empty array for the summer months
summer = []
#Creates an empty array for the fall months
fall = []
####################################################################
#Work Done
####################################################################
#adds the winter months to the winter array starting with december and
#then going down the list to january and february
winter.append(months_list.pop(11))
winter.append(months_list.pop(0))
winter.append(months_list.pop(0))
#adds the spring months to the spring array going down the list from
#march to may indexing and removing the first value in the array 
#months_list
spring.append(months_list.pop(0))
spring.append(months_list.pop(0))
spring.append(months_list.pop(0))
#adds the summer months to the summer array going down the list from
#june to august indexing and removing the first value in the array 
#months_list 
summer.append(months_list.pop(0))
summer.append(months_list.pop(0))
summer.append(months_list.pop(0))
#adds the fall months to the fall array going down the list from
#september to November indexing and removing the first value in the array 
#months_list
fall.append(months_list.pop(0))
fall.append(months_list.pop(0))
fall.append(months_list.pop(0))
####################################################################
#Output
####################################################################
#prints out all of the season arrays
print(winter)
print(spring)
print(summer)
print(fall)
