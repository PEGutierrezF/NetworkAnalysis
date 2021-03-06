



# ---------------------------------------------
# Centralization
# 16 May 2021
# Pablo E. Guti�rrez-Fonseca
# ---------------------------------------------
#  

#https://rpubs.com/MarkusLoew/226759

libraries <- c("tidyverse", "ggplot2", "xts","emmeans", 'quantmod', "ggpubr")
lapply(libraries, require, character.only = TRUE)

data <- tribble(~year, ~Centralization, 
                '2000-12-31', 0.0625,
                '2001-12-31', 0.0741,
                '2002-12-31', 0.0606,
                '2003-12-31', 0.1020,
                "2004-12-31", 0.0741,
                "2005-12-31", 0.0578,
                '2019-12-31', 0.0247,
                '2020-12-31', 0.0352)
data                
data$year <-as.POSIXct(data$year,"%Y-%m-%d",tz = "UTC")


ggplot(data, aes(x = year, y = Centralization)) +
  geom_line(size=1.2) +
  geom_point(size=5) +
  theme_classic()



data<- read.csv("data.csv")
head(data)

centr <- filter(data, variable=="Centralization")
ggplot(centr, aes(x = year, y = value)) +
  geom_line(size=1.2) +
  geom_point(size=5) +
  theme_classic()


density <- filter(data, variable=="Density")
ggplot(density, aes(x = year, y = value)) +
  geom_line(size=1.2) +
  geom_point(size=5) +
  theme_classic()




