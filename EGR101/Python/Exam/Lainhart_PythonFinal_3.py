####################################################################
#Caleb Lainhart
#Lainhart_PythonFinal_3
#11/15/23
####################################################################
#Predeclerations
####################################################################
def primeFactorizer(num):
    #creates empty lists for the prime and non prime factors
    factors = []
    prime = []
####################################################################
#Main
####################################################################
    #iterates from 1 to the inputed number
    for i in range(1,num+1):
        #checks if each number is a factor of the inputed number
        if(num%i == 0):
            #if the number is a factor it adds it to the factor list
            factors.append(i)
            #Creates a counter for the amount of numbers between 2 and the
            #given factor
            count = i-2
            #iterates from to to the given factor
            for ii in range(2,i):
                #checks if the factor is divisible by any other number
                if not(i%ii==0):
                    #if it isnt divisible it subtracts one form the counter
                    count-=1
            #checks if the factor was not divisible by any other number       
            if(count==0):
                #this means the factor is a prime number so it
                #gets removed from the first array and added to
                #the prime array
                prime.append(factors.pop())
####################################################################
#Output
####################################################################
    #converts the two lists into tuples
    factors = tuple(factors)
    prime = tuple(prime)
    #prints out the results
    print("All of the non prime factors that go into "+str(num)+":",factors)
    print("All of the prime factors that go into "+str(num)+":",prime)
    #returns the tuples
    return factors,prime
    
