



# ---------------------------------------------
# Centralization
# 16 May 2021
# Pablo E. Gutiérrez-Fonseca
# ---------------------------------------------
#  

#https://rpubs.com/MarkusLoew/226759


data<- read.csv("data.csv")
head(data)


     ggplot(data, aes(x = year, y = value)) +
  geom_line(size=1.2) +
  geom_point(size=5) +
  theme_classic()


g <- ggplot(data, aes(x = year))
g <- g + geom_line(aes(y = Centralization, colour = "Degree centralization"))
g <- g + geom_line(aes(y = Density , colour = "Link density"))
g <-g +  scale_y_continuous(sec.axis = sec_axis(~.*5, name = "Relative humidity [%]"))
g
