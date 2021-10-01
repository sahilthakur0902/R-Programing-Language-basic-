
#####################################################

# Creating a Numeric Vector
my_numeric_variable <- c(1,2,5.3,6,-2,4,7)
my_numeric_variable

my_numeric_variable_2 <- 1:100
my_numeric_variable_2

# Creating a Logical Vector
my_logical_variable <- c(TRUE, FALSE, FALSE, FALSE, TRUE)
my_logical_variable

# Creating a Character Vector
my_character_variable <- c("Red", "Green", "Blue")
my_character_variable


# Operations on numeric Vectors
# Subtract 2 from a vector
my_NEW <- my_numeric_variable - 2
my_NEW

my_ADD <- my_numeric_variable + 4
my_ADD


# Creating a vector with 4 different types of values
my_student_details <- c(name="Siva", age=12, gender="male", 
                        height=4, lovesicecream=T)

my_student_details
# Keep an eye on datatype.
class(my_student_details)

# rep function
jobs <- c(rep("IT Professionals",20), rep("Data Analysts", 10))
summary(jobs)

# Converting as factor
jobs <- as.factor(jobs)
summary(jobs)

# Creates 10 x 12 numeric matrix 
mymatrix <- matrix(1:20, nrow = 10,ncol = 12)


# Creates 3 X 2 matrix
Distance <- c(2000, 1500, 1800, 1300, 1200, 1700)
Destination <- c("Chennai", "Bangalore", "Pune")
Source <- c("Delhi", "Kolkata") 
mymatrix <- matrix(Distance, nrow=3, ncol=2, byrow=TRUE, dimnames=list(Destination, Source))
mymatrix


# Creates 3 X 3 matrix
Distance <- c(2000, 1500, 1800)
Destination <- c("Chennai", "Bangalore", "Pune")
Source <- c("Delhi", "Kolkata", "Mumbai") 

mymatrix <- cbind(Distance, Destination, Source)
mymatrix
# Again, see datatype. Matrix isn't really helping. Is it?


# Dataframe operations
age <- c(23,34,21,12,67)
names<-c("Mohan","Leslie","Raj","Gayathri","Robert")
income <- c(20000,35000,19000,12000,42000)
ownshouse <- c(TRUE,FALSE,TRUE,TRUE,FALSE)

mydataset <- data.frame(names,age,income,ownshouse)
str(mydataset)

# See column names or variable names.
colnames(mydataset)

ncol(mydataset); nrow(mydataset)    # You can write multiple commands ina line separated by ';'

mydataset[ ,2] # 2nd column
mydataset[2, ] # 2nd row
mydataset[3,2] # value at 3rd row, 2nd column

mydataset$names # all values of names column

mydataset[ , c("names","income")]  # all values of names & income column

################################



#----MATRIX-----
m1 <- matrix(nrow = 4, ncol = 4)
m1

class(m1)
dim(m1)

m1 <- matrix(1:16, nrow = 4, ncol = 4)
m1

data <- c(1:20)
A <- matrix(data,4,5)
A

A[2,3]

B <- matrix(data,4,5,byrow = T)
B

x <- 1:8
y <- 9:16

cbind(x, y)

x <- 1:8
y <- 9:16

cbind(x, y)
rbind(x,y)

x1<-c(0.5, 1.0, 2.3, 5.6, 8.9)
class(x1)
x1

x2<-c(TRUE,FALSE,TRUE,FALSE,FALSE)
class(x2)

x3<-c(T,F,T,T,T)
class(x3)

x4<-c("dog","cat","rat","bag","bag")
class(x4)

x8<-c(0.5 , 2.3 , 5.6 , 8.9 , "dog")
class(x8)

x6 = as.factor(x8)
x6

class(x6)
table(x6)

x5<-c(1:5)
class(x5)

x7<-as.factor(x5)

x<-as.numeric(x7)
x

m1 <- matrix(nrow = 4, ncol = 4)
m1
dim(m1)

m1 <- matrix(1:16,nrow = 4, ncol = 4)
m1

m2 <- 1:16
dim(m2) <- c(4,4)
m2

x <- 1:8
y <- 9:16
cbind(x, y)
rbind(x,y)

#################################

head(iris, n = 10)

#numeric vector
x <- c(54, 62, 71, 48) 

#select first element
x[1]

#select third and 1st element
x[c(3, 1)]

#1st element twice
x[c(1, 1)]

#drop first element
x[-1]

#drop 2 elements
x[-c(1, 5)]

#selection using logical operatos
x[c(TRUE, TRUE, FALSE, FALSE)]

#logical operator
x[which(x > 60)]

#using which operator
x[which(x > 70)]

# blank means ALL
x[]


#first four elements
x[1:4]


#create a sample matrix
a <- matrix(1:9, nrow = 3)
a

#renaming the columns
colnames(a) <- c("A", "B", "C")
a

#selecting first two rows
a[1:2, ]

#selection based on logical values
a[c(T, F, T), c("B", "A")]

df <- data.frame(x1, x2, x3, x4, x5, x6, x7)
df

df$x4

#select rows based on column x1
df[df$x1 == 2.3, ]

#select rows
df[c(1, 3), ]

#select columns x1 and x4
df[c("x1", "x4")]

#subset like a matrix
df[, c("x1", "x4")]


#####################################################

