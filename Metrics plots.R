



# ---------------------------------------------
# Centralization
# 16 May 2021
# Pablo E. Gutiérrez-Fonseca
# ---------------------------------------------
#  




# cleans global environment
rm(list = ls())



data <- tribble(~year, ~Centralization, 
                '2000-12-31', 0.08333333,
                '2001-12-31', 0.07407407,
                '2002-12-31', 0.2040816,
                '2003-12-31', 0.1604938, #0.1020,
                "2004-12-31", 0.07098765, #0.0741,
                "2005-12-31", 0.05555556, #0.0578,
                "2012-12-31", 0.04890928, 
                "2013-12-31", 0.03610655,
                '2019-12-31', 0.0247,
                '2020-12-31', 0.0352)
data                
data$year <-as.POSIXct(data$year,"%Y-%m-%d",tz = "UTC")


ggplot(data, aes(x = year, y = Centralization)) +
  geom_line(size=1.2) +
  geom_point(size=5) +
  
  theme_bw() + 
  
  # Labels
  labs(x= 'Year', y= 'Centralization') +
  
  #Axis  
  theme(axis.title.x = element_text(size = 16, angle = 0)) + # axis x
  theme(axis.title.y = element_text(size = 16, angle = 90)) + # axis y
  theme(axis.text.x=element_text(angle=0, size=14, vjust=0.5, color="black")) + #subaxis x
  theme(axis.text.y=element_text(angle=0, size=14, vjust=0.5, color="black"))  #subaxis y





# Homophily ---------------------------------------------------------------

data <- tribble(~year, ~Centralization, 
                '2000-12-31', -0.3333333,
                '2001-12-31', -0.6137072,
                '2002-12-31', -0.7538462,
                '2003-12-31', -0.5833333, 
                "2004-12-31", -0.6239316, 
                "2005-12-31", 0.1666667,
                "2012-12-31", -0.1637377,
                "2013-12-31", 0.3633541,
               # '2019-12-31', 0.0247,
                #'2020-12-31', 0.0352
                )
data                
data$year <-as.POSIXct(data$year,"%Y-%m-%d",tz = "UTC")


ggplot(data, aes(x = year, y = Centralization)) +
  geom_line(size=1.2) +
  geom_point(shape=15, size=5) +
  ylim(-1, 0.5) +
  geom_hline(yintercept=0, linetype="dashed", color = "gray50", size= 1) +
  
  theme_bw() + 
  
  # Labels
  labs(x= 'Year', y= 'Assortativity') +
  
  #Axis  
  theme(axis.title.x = element_text(size = 16, angle = 0)) + # axis x
  theme(axis.title.y = element_text(size = 16, angle = 90)) + # axis y
  theme(axis.text.x=element_text(angle=0, size=14, vjust=0.5, color="black")) + #subaxis x
  theme(axis.text.y=element_text(angle=0, size=14, vjust=0.5, color="black"))  #subaxis y
  
  



