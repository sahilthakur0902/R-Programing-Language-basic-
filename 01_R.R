
# Variable


x <- 5     # Assign the value to the variable

x          #Print x

y = 6      

y





x == y     # Checking if x is equal to y


x - y


######

cars <- 20

bikes <- 15


cars + bikes       #Addition of two variables


cars > bikes       #Comparision of two variables


diff <- cars - bikes


diff



Karan007 <- 23        #Correct Variable Name


007Karan <-  24       #Wrong Variable Name



RAHUL <- 10          #R is case-sensitive

rahul <- 9

Rahul <- 8



# #True and false are logical or boolean values. 

TRUE == FALSE

T

F

TRUE > FALSE
# R reads True as 1 and False as 0.


T + T




sqrt(5)



exp(3)



help(max)



#Operators & Functions can work within a function (Composite functions)



# function(arg1, arg 2, -----     )



sin(log(sqrt( 9-8 )))             # Take care of parenthesis




# Vectors

# A vector is a linear structured set of values.
# just like one column in a dataset.

# c function (shorthand of combine)

#Say, age column of a dataset of employees
age <- c(23, 43, 53, 24, 38)  

class(age)

max(age)

sum(age)


# city of work of the employees
city <- c("Delhi", "Mumbai", 'Kolkata', 'Goa', "Jaipur")

class(city)

sum(city)


# A column explaining whether this employee is local resident of this city or not

locale <- c(TRUE, FALSE, F, T, FALSE)

class(locale)



# Column explaining which shift employee works in.

shift <- c( 1 , 3 , "II" , "I" , 2)     


shift


class(shift)
#R converts y into a Character vector


#This type of conversion is called Coercion.



# More examples
class(c(FALSE, 3, "twelve"))

class(c(FALSE, 3))

class(c(FALSE))




# Vector Operations

#Accessing Vector elements

my_vector <- c(5, 8, 14, 10)

my_vector[3]                         #Accessing 3rd element of my_vector



my_vector[1 , 4]             


my_vector[ c(1 , 4) ]             # Accessing random elements


my_vector[2:4]


##Index in R starts from 1




#Negative Indexing

my_vector[-3]   

#Returns all elements other than 3rd element

# Its just printing some elements. Original Vector remains the same

my_vector

# Saving new values to new variable
my_vector <- my_vector[-3]

my_vector



#Performing different Operations on vectors

odd_vector <- c(1, 3, 5, 7)

even_vector <- c(2, 4, 6, 8)

added_vector <- odd_vector + even_vector

added_vector



#Applying functions on Vectors
my_vector1 <- c(9, 1, 7, 5, 3)

my_vector1 >= 5


min(my_vector1)

sum(my_vector1)

mean(my_vector1)

sort(my_vector1)


# Try to find, how to sort in descending order.

help(sort)

#####################