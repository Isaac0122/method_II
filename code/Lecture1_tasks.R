############
### Lecture 1: Tasks
### by Olga Gasparyan
### Lecture 1
#### August 25, 2025


# rm(list = ls())

#load necessary packages
library(tidyverse)
library(ggplot2)

#load dataset
df <- read.csv("HERE SHOULD BE YOUR DIRECTORY/FLVoters.csv") 

#check the dimensions of the dataset:
ncol(df)
nrow(df)
dim(df)

#list all the variables: 
names(df)


#check the type of the dataset object
class(df)

#check the type of a variable:
class(df$gender)

#To check how many females and males are in the sample we use table()
table(df$gender)

#or we can use a tidyverse package functions:
df%>%
  group_by(gender)%>%
  summarise(n())


#to check what is the youngest and the oldest age: 
max(df$age, na.rm=TRUE)
min(na.omit(df$age))

min(df$age, na.rm=TRUE)
max(na.omit(df$age))

#or we can just use summary() function, since age is a numeric variable.
class(df$age) #it is integer
summary(df$age)
summary(df$gender)

#to build a histogram of age distribution, we can use a basic R plots: 
hist(df$age)

#or ggplot package:
ggplot(df, aes(x=age))+
  geom_histogram()

#To check a cross tab for 2 variables, we can use table() function applied to two variables:
table(df$gender, df$race)


#to subset variables in the dataframe we can use tidyverse and dplyr:
df_short <- df%>%
  subset(select=c(gender, age, race))

df_short2 <- df%>%
  dplyr::select(gender, age, race)


#to drop NAs we can use either na.omit:
df_short.na2<-na.omit(df_short)

#or filter() function from the tidyverse: 
df_short_na <- df_short%>%
  filter(!is.na(gender), !is.na(age), !is.na(race))





