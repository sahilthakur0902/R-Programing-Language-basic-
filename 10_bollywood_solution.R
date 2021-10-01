
#	Import the Bollywood data set in Rstudio in a variable named bollywood
## (Remember to set working directory)


bollywood <- read.csv('bollywood.csv')


View(bollywood)

#	When you import a data set, You can check the structure of the data frame by using str()

str(bollywood)

# Import dataset such that strings are read in character form.


#Q1.
#	Access the last 10 movies (from the bottom of the Bollywood data frame) using column bollywood$Movie
# Store the names of those movies in last_10 vector (in the same order)

last_10 <- tail(bollywood$Movie, n = 10)


last_10    


#Q2.
#	Find out the total number of  missing values (NA) in the bollywood data frame.
# Store the result in na_bollywood vector

na_bollywood <- sum(is.na(bollywood))

na_bollywood


#Q3
#	Write the command(s) to find out which movie tops the list in terms of Total Collections
# Store the movie name in variable named top_movie


top_movie <- bollywood[ which.max(bollywood$Tcollection), c(1,7)]

top_movie  



#Q4
#	Write the command to find out which movie comes second on the list in terms of Total Collections
# Store the movie name in variable named top_2_movie


bollywood[which(bollywood$Tcollection == 
                  sort(bollywood$Tcollection, decreasing = T)[2]) , ]


require(dplyr)

bollywood <- arrange(bollywood , desc(Tcollection) )

bollywood[2, ]



# Now let's find out the movies shot by Shahrukh, Akshay and Amitabh separately.

shahrukh <- bollywood[ which(bollywood$Lead == 'Shahrukh') , ]

shahrukh


akshay <- subset(bollywood, bollywood$Lead == 'Akshay')

akshay


amitabh <- filter(bollywood, Lead == 'Amitabh')

amitabh



#Q5
#	What is the total collection of Shahrukh, Akshay and Amitabh movies individually?
# You can use	a column named 'Tcollection' for this

shahrukh_collection <- sum(shahrukh$Tcollection)

akshay_collection <- sum(akshay$Tcollection)

amitabh_collection <- sum(amitabh$Tcollection)



shahrukh_collection ; akshay_collection ; amitabh_collection



#Q6  
# Write command/s to find out how many movies are in Flop, Average, Hit and 
# Superhit categories in the entire Bollywood data set.

v <- as.factor(bollywood$Verdict)

summary(v)

summary( as.factor(bollywood$Verdict) )

table(bollywood$Verdict)



#Q7 Write a command to find the maximum value of Ocollection, Wcollection, 
#   Fwcollection and Tcollection
#   Remember! You can't write many commands; one for each result.
#   All results should appear in One-Go.

sapply(bollywood[ , c(4:7)] , max, na.rm = T)



#Q8 
# Write a command to find the names of the movies which have the maximum Ocollection, 
# Wcollection, Fwcollecion & Tcollection.
# Store the names of 4 movies in same sequence in movie_result vector.
#   Remember! You can't write many commands; one for each result.
#   All results should appear in One-Go.

sapply(bollywood[ , c(4:7)], which.max)

bollywood$Movie[ sapply(bollywood[ , c(4:7)], which.max) ]

#############################
