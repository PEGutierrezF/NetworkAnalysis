



# ---------------------------------------------
# Centralization
# 16 May 2021
# Pablo E. Gutiérrez-Fonseca
# ---------------------------------------------
#  




# cleans global environment
rm(list = ls())



data <- tribble(~year, ~Centralization, 
                '2000-12-31', 0.1428571,  #F
                '2001-12-31', 0.07407407,
                '2002-12-31', 0.2040816,
                '2003-12-31', 0.1604938, 
                "2004-12-31", 0.07098765, 
                "2005-12-31", 0.05555556,
                "2006-12-31", 0.09375,
                "2007-12-31", 0.1468144,
                "2008-12-31", 0.02666667,
                "2009-12-31", 0.06281958,
                "2010-12-31", 0.08926696,
                "2011-12-31", 0.05268779,
                "2012-12-31", 0.04890928, 
                "2013-12-31", 0.03610655,
                "2014-12-31", 0.02874139,
                "2015-12-31", 0.07426593
                )
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

data <- tribble(~year, ~Assortativity, 
                '2000-12-31', -0.3333333,  # False
                '2001-12-31', -0.6137072,
                '2002-12-31', -0.7538462,
                '2003-12-31', -0.5833333, 
                "2004-12-31", -0.6239316, 
                "2005-12-31", 0.1666667,
                "2006-12-31", -0.5711462,
                "2007-12-31", 0.08275481,
                "2008-12-31", -0.6666667,
                "2009-12-31", -0.07174447,
                "2010-12-31", 0.7161614,
                "2011-12-31", -0.2152791,
                "2012-12-31", -0.1637377,
                "2013-12-31", 0.3633541,
                "2014-12-31", 0.06172443,
                "2015-12-31", 0.009322454,
                )
data                
data$year <-as.POSIXct(data$year,"%Y-%m-%d",tz = "UTC")


ggplot(data, aes(x = year, y = Centralization)) +
  geom_line(size=1.2) +
  geom_point(shape=15, size=5) +
  ylim(-1, 1) +
  geom_hline(yintercept=0, linetype="dashed", color = "gray50", size= 1) +
  
  theme_bw() + 
  
  # Labels
  labs(x= 'Year', y= 'Assortativity') +
  
  #Axis  
  theme(axis.title.x = element_text(size = 16, angle = 0)) + # axis x
  theme(axis.title.y = element_text(size = 16, angle = 90)) + # axis y
  theme(axis.text.x=element_text(angle=0, size=14, vjust=0.5, color="black")) + #subaxis x
  theme(axis.text.y=element_text(angle=0, size=14, vjust=0.5, color="black"))  #subaxis y
  
  



