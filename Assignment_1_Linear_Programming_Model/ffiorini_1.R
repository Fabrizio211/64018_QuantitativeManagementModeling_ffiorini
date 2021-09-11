
#ASSIGNMENT 1
#QUANTITATIVE MANAGEMENT MODELING
#Spring 2021
#Fabrizio Fiorini

#Instructions:
#You will create an R script. You may choose what the script does, but at the minimum should demonstrate the following: 
#1) Read a file for data 
#2) Produce summary statistics of the data 
#3) Produce a graph, and 
#4) That it works. 

#LOADING LIBRARIES
library(ggplot2)
library(dplyr)

#READING FILE
setwd("C:\\Users\\Fabrizio\\Desktop\\MyBlackBoard\\MIS 64018 - Quant. Management Modeling\\Module 2 - The Linear Programming Model")
dataset <- read.csv("diamonds.csv")

#SUMMARY STATISTICS
summary(dataset)
#The summary function allows us to observe some standard statistics about each of the variables in the dataset. We can know the minimum and maximum values, the median, the mean and the 1st and 3rd quantiles, as well as understand the variable's type.
#For example, we see that carat can have value between 0.2 and 5.01, or that the average price for a diamond is equal to almost 4 thousand.
glimpse(dataset)
#Now we know that the database contains 10 variables for each of the 53,940 observations. Is it also interesting to see the values the variables cut and color can have.
head(dataset)
levels(factor(dataset$color))
#A diamond can be one of the colors expressed with the letters D, E, F, G, H, I, J.
levels(factor(dataset$cut))
#A diamond can have different levels of cut quality: fair, good, ideal, premium, very good.
dataset %>% select("carat", "depth", "price") %>% sapply(mean)
#With this chain of functions we can get the average value of the variables selected: carat, depth, and price.
table(dataset$cut, dataset$color)
#The table gives us the distribution of the total number of diamonds in the dataset categorized by cut and color.

#DATA VISUALIZATION
boxplot(dataset$carat)
#By plotting the boxplot, we understand that the majority of the diamonds are relatively small/light, while only a few (outliers) are between 2 and 5 carat (heavier).
big.d <- dataset %>% filter(carat >= 3)
ggplot(big.d, aes(clarity, fill = cut)) + 
  geom_bar() + 
  labs(x = "Diamond Clarity", y = "Composition by Cut")
#From the bar chart we can see, among the diamonds with carat greater or equal to 3, which is the distribution both by cut quality and clarity. It seems that the majority of the heavier diamonds are in class of clairy I1 and than within this class, many of them have a fair or premium cut.
ggplot(dataset, aes(carat, price, color = cut, alpha = 0.1)) + 
  geom_point(shape = 6) + 
  labs(x = "Weight in Carat", y = "Price of Diamond")
#The scatter plot clearly shows that the price is positively correlated to the carat (weight) of the diamonds. Moreover, it is interesting to notice that for a certain level of carat, a higher quality cut (premium, ideal) has a higher price than other types of cut (fair, good).

                                                                          