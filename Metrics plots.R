



# ---------------------------------------------
# Plots: Centralization, Assortativity & Link Density
# 19 Jun 2022
# Pablo E. Gutiérrez-Fonseca
# pabloe.gutierrezfonseca@gmail.com
# ---------------------------------------------
#   




# cleans global environment
rm(list = ls())


data <- tribble(~year, ~Centralization, ~Assortativity, ~Assortativity_country, ~Density, 
                '2000-01-01', 0.1428571,  NA,        1,          0.1904762,
                '2001-01-01', 0.1403509,  0.2,       0.5469256,  0.08187135,
                '2002-01-01', 0.3571429,  1,         1,          0.2142857, 
                '2003-01-01', 0.2888889,  0.7142857, 0.7777778,  0.1555556,
                "2004-01-01", 0.1345029,  0.8989899, 0.7464789,  0.0877193, 
                "2005-01-01", 0.0952381, -0.1111111, 0.1304348,  0.2380952, 
                "2006-01-01", 0.1785714,  0.6577947, 0.7247706,  0.07142857, 
                "2007-01-01", 0.2789474,  0.1407942, 0.3789954,  0.08947368,
                "2008-01-01", 0.05,      -0.1764706, 0.5488722,  0.08333333, 
                "2009-01-01", 0.1223329,  0.667063,  0.776,      0.0398293, 
                "2010-01-01", 0.1759834,  0.1034483, 0.4642039,  0.02691511,
                "2011-01-01", 0.1034242,  0.6226994, 0.6914974,  0.02865129, 
                "2012-01-01", 0.09654819, 0.2922161, 0.6861206,  0.02187286, 
                "2013-01-01", 0.07141074, 0.7161352, 0.7653841,  0.0184769, 
                "2014-01-01", 0.05712125, 0.4376986, 0.6481456,  0.012499,
                "2015-01-01", 0.1477542,  0.3601077, 0.407521,   0.01014053,
                "2016-01-01", 0.07317835, 0.4442395, 0.407521,   0.01412323,
                "2017-01-01", 0.05668194, 0.5925338, 0.6971441,  0.01073379,
                "2018-01-01", 0.06894611, 0.6607581, 0.7491474,  0.008723793,
                "2019-01-01", 0.05798701, 0.490566,  0.6138306,  0.01058442,
                "2020-01-01", 0.09127707, 0.4051079, 0.5587758,  0.007488363)
data                
data$year <-as.POSIXct(data$year,"%Y-%m-%d",tz = "UTC")


c <- ggplot(data, aes(x = year, y = Centralization)) +
  geom_line(size=1.2) +
  geom_point(size=5) +
  
  theme_bw() + 
  
  # Labels
  labs(x= '', y= 'Centralization') +
  
  #Axis  
  theme(axis.title.x = element_text(size = 16, angle = 0)) + # axis x
  theme(axis.title.y = element_text(size = 16, angle = 90)) + # axis y
  theme(axis.text.x=element_text(angle=0, size=14, vjust=0.5, color="black")) + #subaxis x
  theme(axis.text.y=element_text(angle=0, size=14, vjust=0.5, color="black"))  #subaxis y
c




# Assortativity ---------------------------------------------------------------

df.a <- data %>% 
  select(year, Assortativity, Assortativity_country) %>% 
  tidyr::pivot_longer(cols=c('Assortativity','Assortativity_country'),
                      names_to = 'assor', 
                      values_to= 'value')
df.a

df.a                
df.a$year <-as.POSIXct(df.a$year,"%Y-%m-%d",tz = "UTC")

h <- ggplot(df.a, aes(x=year,y=value, linetype=assor)) + 
  geom_line(size=1) + geom_point(size = 4) +
  
  ylim(-1, 1) +
  geom_hline(yintercept=0, linetype="dashed", color = "gray50", size= 1) + 
  
  annotate("text", x = as.POSIXct(c("2017-02-01")), y = 0.9, label = "Low collaboration", size=6) +
  annotate("text", x = as.POSIXct(c("2017-02-01")), y =-0.9, label = "High collaboration", size=6) +
  
  theme_bw() + 
  
  # Labels
  labs(x= 'Year', y= 'Assortativity') +
  
  #Legend
  theme(legend.title=element_blank()) +
  theme(legend.text = element_text(color = "black", size = 16))+  #factor name
  scale_linetype_manual("",values =c("solid","dotdash"),
                        breaks=c("Assortativity", "Assortativity_country"), 
                        labels=c("Continent","Country"))+ 
  theme(legend.position=c(0.15,0.25)) +
  
  
  #Axis  
  theme(axis.title.x = element_text(size = 16, angle = 0)) + # axis x
  theme(axis.title.y = element_text(size = 16, angle = 90)) + # axis y
  theme(axis.text.x=element_text(angle=0, size=14, vjust=0.5, color="black")) + #subaxis x
  theme(axis.text.y=element_text(angle=0, size=14, vjust=0.5, color="black"))  #subaxis y
h  

Fig.x <- c / h
Fig.x + ggsave("Figure 2.jpg",width = 200, height = 220, units = "mm")

# Density ---------------------------------------------------------------

data                
data$year <-as.POSIXct(data$year,"%Y-%m-%d",tz = "UTC")


d <- ggplot(data, aes(x = year, y = Density)) +
  geom_line(size=1.2) +
  geom_point(shape=15, size=5) +
  ylim(-0.5, 0.5) +
  geom_hline(yintercept=0, linetype="dashed", color = "gray50", size= 1) +
  
  theme_bw() + 
  
  # Labels
  labs(x= 'Year', y= 'Density') +
  
  #Axis  
  theme(axis.title.x = element_text(size = 16, angle = 0)) + # axis x
  theme(axis.title.y = element_text(size = 16, angle = 90)) + # axis y
  theme(axis.text.x=element_text(angle=0, size=14, vjust=0.5, color="black")) + #subaxis x
  theme(axis.text.y=element_text(angle=0, size=14, vjust=0.5, color="black"))  #subaxis y
d




