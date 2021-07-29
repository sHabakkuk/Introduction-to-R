#Learning R

###This is a comment

#Creating my first variable

rm(list = ls())

Age <- c(23, 35,45,50)

FirstName <- c("Esther","Habakkuk","Amos","Robert")

#Creating Objects in R

##Vector - is an object that stores the elements of the same datatype.
fruits <- c("Apple", "Oranges","Pineapple","Mangoes")

#A list stores elements of different data types
#A list uses a list function.

list1 <- list(24, "Maize", c("Apple", "Oranges","Pineapple","Mangoes"))
list1

#Matrix is a 2 dimensional object
matrix1 <- matrix(c(1:9), nrow=3,ncol = 3)
matrix1

##Factor - categorizes data and stores it in levels
factor1 <- factor(c("Kiambu","Turkana","Elgeyo Marakwet","Kisumu","Turkana","Elgeyo Marakwet","Kilifi"))
factor1

#Data frame - arrange data in a tabular form.
dataframe1 <- data.frame(
  Lastname = c("Kibaki","Senelwa","Kuks","Oliver"),
  Age = c(24,25,66,32),
  Sales = c(2400,6000,2500,6800),
  stringsAsFactors = FALSE
)
head(dataframe1)


##Data Visualization
 w1 <- c("Maths","English","Kiswahili","CRE","History")
 w2 <- c(70,58,90,62,80)
 ##BarPlot
barplot(w2, names.arg = w1, col = "blue")

##Pie chart
pie(w2, labels=w1,main = "Subject Perfomance")

##Scatter plot
age <- c(23,26,78,66,45,34,56,44,56)
height <- c(121,116,124,114,158,125,109,146,162)
weight <- c(67,45,69,72,66,62,45,78,69)

plot(height, weight)

#Statistical Analysis
##mean, mode,median
mean(height)

median(height)

var(height)

#calculate mode (create a function to calculate mode)
getmode <- function(v)
{
  uniqv <- unique(v)
  uniqv [which.max(tabulate(match(v,uniqv)))]
}

getmode(weight)

#We can get mode using modeest package
library(modeest)

mfv(weight)




#Loading pre-existing datasets in R

#View pre-existing datasets in R
data()

#Loading the datasets
data("cars")
names(cars)

summary(cars)
plot(cars)



