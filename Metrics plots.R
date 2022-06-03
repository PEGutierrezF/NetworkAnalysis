



# ---------------------------------------------
# Centralization
# 16 May 2021
# Pablo E. Gutiérrez-Fonseca
# ---------------------------------------------
#  




# cleans global environment
rm(list = ls())



data <- tribble(~year, ~Centralization, 
                '2000-12-31', 0.1428571,
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
                '2000-12-31', NA,
                '2001-12-31', 0.2857143,
                '2002-12-31', 1,
                '2003-12-31', 0.7142857, 
                "2004-12-31", 0.8993289, 
                "2005-12-31", 0,
                "2006-12-31", 0.6616541,
                "2007-12-31", 0.1793103,
                "2008-12-31", 0,
                "2009-12-31", 0.6674584,
                "2010-12-31", 0.1584671,
                "2011-12-31", 0.6226994,
                "2012-12-31", 0.3066667,
                "2013-12-31", 0.7162033,
                "2014-12-31", 0.4392211,
                "2015-12-31", 0.384914,
                )
data                
data$year <-as.POSIXct(data$year,"%Y-%m-%d",tz = "UTC")


ggplot(data, aes(x = year, y = Assortativity)) +
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
  



# Number of papers ---------------------------------------------------------------

length(unique(a.2000$PubID))
length(unique(a.2001$PubID))
length(unique(a.2002$PubID))
length(unique(a.2003$PubID))
length(unique(a.2004$PubID))
length(unique(a.2005$PubID))
length(unique(a.2006$PubID))
length(unique(a.2007$PubID))
length(unique(a.2008$PubID))
length(unique(a.2009$PubID))
length(unique(a.2010$PubID))
length(unique(a.2011$PubID))
length(unique(a.2012$PubID))
length(unique(a.2013$PubID))
length(unique(a.2014$PubID))
length(unique(a.2015$PubID))
length(unique(a.2016$PubID))
length(unique(a.2017$PubID))
length(unique(a.2018$PubID))
length(unique(a.2019$PubID))
length(unique(a.2020$PubID))

data.n.papers <- tribble(~year, ~papers, ~authors,
                '2000-01-01', 3,  2,
                '2001-01-01', 7,2,
                '2002-01-01', 3,2,
                '2003-01-01', 3, 2,
                "2004-01-01", 7, 2,
                "2005-01-01", 4,2,
                "2006-01-01", 6,2,
                "2007-01-01", 5,2,
                "2008-01-01", 6,2,
                "2009-01-01", 11,2,
                "2010-01-01", 19,2,
                "2011-01-01", 15,2,
                "2012-01-01", 20,2,
                "2013-01-01", 33,2,
                "2014-01-01", 54,2,
                "2015-01-01", 41,2,
                "2016-01-01", 35,127,
                "2017-01-01", 47,179,
                "2018-01-01", 46,207,
                "2019-01-01", 38,176,
                "2020-01-01", 49,244,
)

data.n.papers                
data.n.papers$year <-as.POSIXct(data.n.papers$year,"%Y-%m-%d",tz = "UTC")


ggplot(data.n.papers, aes(x=year, y= papers)) +
  geom_bar(stat="identity") +

theme_bw() + 
  
  # Labels
  labs(x= 'Year', y= 'Numbers of papers') +
  
  #Axis  
  theme(axis.title.x = element_text(size = 16, angle = 0)) + # axis x
  theme(axis.title.y = element_text(size = 16, angle = 90)) + # axis y
  theme(axis.text.x=element_text(angle=0, size=14, vjust=0.5, color="black")) + #subaxis x
  theme(axis.text.y=element_text(angle=0, size=14, vjust=0.5, color="black"))  #subaxis y

