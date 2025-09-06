#### Seng Yee Sin
## 2025 Aug 25
##### Class 1 -----------

library(tidyverse)

#read
data_fl <- read.csv("data/FLVoters.csv")
glimpse(data_fl)

#dimension
ncol(data_fl)
nrow(data_fl)
dim(data_fl)

class(data_fl)

#list variables name
names(data_fl)

#count of gender
data_fl %>% 
  filter(gender == "m") %>%
  count()

data_fl %>% 
  filter(gender == "f") %>%
  count()

class(data_fl$gender)
table(data_fl$gender)

#age of yougest, oldest
class(data_fl$age)
summary(data_fl$age)

min(na.omit(data_fl$age))
max(na.omit(data_fl$age))

#histogram of age
ggplot(data_fl, aes(x=age)) +
  geom_histogram()

hist(data_fl$age)

#joint distribution of gender and race
table(data_fl$gender, data_fl$race)

data_sep <- data_fl %>%
  dplyr::select(gender, age, race) 

data_sep <- data_fl %>%
  subset(select = c(gender, age, race))

#remove na
count(na.omit(data_sep))
dim(na.omit(data_sep))
data_sep %>% 
  filter(!is.na(gender), !is.na(age), !is.na(race)) %>%
  dim()

