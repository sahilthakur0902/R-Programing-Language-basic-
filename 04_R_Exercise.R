
# An instructor Rochelle is the academics in-charge in a university. 
# She is tasked with creating a database of the students. 
# The headmaster asks her to consider following columns from a manual directory maintained by the college- 
# Student Name, Age, Major Subject, Pass/Fail.
# A vector for each of these has been separately created by another instructor - Reena.
# But Reena did not know how to combine them as dataset.

name <- c("Meena", "Teena", "Kiran", "Nitin", "Harpreet", "Shaikh")

age <- c(23, 34, 26, 28, 25,18)

majorsubject <- c("Maths","English", "Science", "English", "Science", "Maths")

pass <- c(TRUE, TRUE, FALSE, FALSE, TRUE, FALSE)


#Q1.
# Rochelle thinks that because of the different data-types in each vector, using data-frames would be the best option.
# What command should Rochelle use to create the dataframe named "students" that contains these vectors.





# Rochelle discovers that Reena had also created vectors containing gender details and percentage.
# Rochelle thinks intuitively that this information could help analyse the data later, so plans to add it in her data frame. 

gender <- c("Female", "Female", "Male", "Male", "Female", "Male")

overallpercentage <- c(54, 67, 46, 59, 64, 48)





#Q2.
# What command should she use to add the new info to the original dataframe?




# After a year, Rochelle gets a similar data for the new batch of students. 

name <- c("Kunal", "Hema", "Mohini", "Preet", "Myra", "Salma")

age<- c(26, 34, 28, 19, 25, 32)

majorsubject <- c("Science", "Maths","English", "Hindi", "Maths", "Maths")

pass <- c(FALSE,TRUE, FALSE,TRUE, TRUE, FALSE)

gender <- c("Male", "Female", "Female", "Male", "Female", "Female")

overallpercentage<- c(38, 67, 53, 62, 68, 53 )




#Q3.
# What is the best way to add this data to the bottom of the 'students' data frame?




#Q4.
# Rochelle's manager asks her to present the summary of the final database.
# What is the mean of the percentage as shown in the summary.




#Q5.
# Rochelle discovers that a name of one student "Nitin" is wrong.
# Actually it should have been "Nitish".
# How should she edit it?




#Q6.
# Rochelle now needs to show Name and OverallPercentage of Students who have failed in any of the subjects.
# How to code that?




#Q7.
# A new student, Robin, whose details have to be entered.
# Age = 34, gender = Male, major subject = "Maths".
# But rest of data is missing for this student.
# How to add him to existing database?





