
########################################


# Reading csv dataset
bank <- read.csv("D:/PGA - R/PGA R Module/bank.csv")


head(bank)


# Check structure
str(bank)



#Accessing a column of bank data frame
bank[ , 1]



#Accessing a row of bank data frame
bank[1 , ]







##########################

# See missing values
is.na(bank)



T + F + F + F + T



sum( is.na(bank) )



# Column-wise sum
colSums(is.na(bank))



which( is.na(bank$salary) )

missing_sal <- bank[ which( is.na(bank$salary) ) , ]




# Check duplicate rows

duplicated(bank)



# Count them
sum(duplicated(bank))



which( duplicated(bank) )



# bank <- bank[ - which(duplicated(bank) ) , ]



require(dplyr)

bank <- distinct(bank)


########################### 

# A few mathematical functions

max(bank_2$balance)


min(bank_2$balance)


mean(bank_2$balance)


median(bank_2$balance)


quantile(bank_2$balance)


summary(bank$balance)


sum(bank$balance)



# Handling missing values.

sum(bank$salary)



?sum



sum(bank$salary , na.rm = T)




mean(bank$salary , na.rm = T)




# Not so mathematical functions

sort(bank$balance)


sort(bank$balance, decreasing = T)




# Fetch top 10 only


head(sort(bank$balance,decreasing=TRUE), n=10)


sort(bank$balance, decreasing = T)[1:10]




####


# The which family

which.max(bank$balance)

bank[which.max(bank$balance) , ]




which.min(bank$salary)

bank$default[ which.min(bank$salary) ]




# Custom condition-based 

bank$salary >= 75000

which(bank$salary >= 75000)

df <- bank[which(bank$salary >= 75000) , ]




# zero_balance 



###############

# Multiple conditions

# OR case 

prospects <- bank[which( bank$salary > 75000 | bank$balance > 2000 ) , ]


# AND case
prospects_1 <- bank[which(bank$salary > 75000 & bank$balance > 2000 ) , ]





# No. of customers whose Job role is Management and 
# Salary more than 75K and Marital status is Single.





# The NOT operator


!FALSE   ### NOT FALSE = TRUE


# Job = anything BUT entrepreneur

length(which(bank$job != "unknown"))



##########



#### Categorical Variables (Strings)  ###########


unique(bank$job)

distinct(bank, job)



summary(bank$job)

summary(as.factor(bank$job))



table(bank$job)



table(bank$marital)


bank$marital[which(bank$marital == "separated")] <- "divorced" 


table(bank$marital)




table(bank$housing)




bank$housing <- tolower(bank$housing)

table(bank$housing)




sapply( bank[ , c('age', 'salary', 'balance')] , median )




bank[ , c(2, 4:6, 8:10)] <- sapply( bank[ , c(2, 4:6, 8:10)] , toupper )


bank_1 <- bank

bank_1 <- sapply(bank_1, tolower)
  
str(bank_1)



bank <- distinct(bank)


########################################



df_1 <- group_by(bank, marital)



df_2 <- summarise(df_1, mean(salary, na.rm = T) )



# Group by job

df_3 <- group_by(bank, job)


df_4 <- summarise(df_3, median(balance), mean(salary, na.rm = T))




########################################



 