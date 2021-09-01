library(tidyverse)
library(dplyr)
data("iris")

#Quiz Question 1

#Method 1
center <- subset(iris,Petal.Length>2.5 & Petal.Length < 5 & Petal.Width > 0.75 & Petal.Width < 1.75)
nrow(center)

#Method 2

middle <- filter(iris,Petal.Length>2.5 & Petal.Length < 5 & Petal.Width > 0.75 & Petal.Width < 1.75)
nrow(middle)

#Method 3

SUB <- iris %>%
        filter(Petal.Length > 2.5) %>% 
        filter(Petal.Length < 5) %>% 
        filter(Petal.Width > 0.75) %>% 
        filter(Petal.Width < 1.75)
nrow(SUB)