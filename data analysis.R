



# ---------------------------------------------
# Centralization
# 16 May 2021
# Pablo E. Gutiérrez-Fonseca
# ---------------------------------------------
#  

#https://rpubs.com/MarkusLoew/226759


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




