
x1<-c(2.5,1.4,6.3,4.6,9)

x1

class(x1)

length(x1)



x2<-c(TRUE,FALSE,TRUE,FALSE,FALSE)

class(x2)

length(x2)



x3<-c("DataMining","Statistics","Analytics","Projects","MachineLearning")

class(x3)

length(x3)



x4<-c(2,5,1,6,3,4,6,9,0)

class(x4)

length(x4)




#--------
#
Myfirstvector <- c(1,2,3,4,5)

Myfirstvector

class(Myfirstvector)

is.numeric(Myfirstvector)



v3 <- c("a","b","c","hello",7)

v3

is.character(v3)


#seq-- similar like :-------

seq(1, 15)

# is same as

1:15

# by parameter

seq(1, 15, by = 3)


z <- seq(0, 15, 5)

z


#rep-----replicate

rep(3, 150)

rep("a", 5)

rep(v3, 4)

# 'each' parameter

rep(v3, 4, each = 3)

#----------------

# Indexing

w <- c("a","b","c","d","e")
w
w[1]

w[-2]

w[1:3]

w[4:5]
w[6]
w[5:1]
w[c(1,3,5)]
w[c(1,4)]
w[c(1,1,1)]
w[-5]
w[-4]
w[-6]

# Mathematical operations in vectors
N <- 10
N

a <- sample(N)
a

b <- sample(N)
b

c<- a * b
c

d <- a - b
d

