



# ---------------------------------------------
# Plots: Centralization, Assortativity & Link Density
# + Figure 2
# 19 Jun 2022
# Pablo E. Gutiérrez-Fonseca
# pabloe.gutierrezfonseca@gmail.com
# ---------------------------------------------
#   



# cleans global environment
rm(list = ls())

# Combine results into a data frame
data <- data.frame(
  Year = c(2000, 2001, 2002),
  Centralization = c(centr_2000, centr_2001, centr_2002),
  Density = c(densyti_2000, densyti_2001, densyti_2002),
  Assortativity_Continent = c(a_2000cont, a_2001cont, a_2002cont),
  Assortativity_Country =  c(a_2000count, a_2001count, a_2002count))

data

data <- tribble(~year, ~Centralization, ~Assortativity, ~Assortativity_country, ~Density, 
                '2000-01-01', 0.2679739,  0.752381,        0.7877551,          0.08496732,
                '2001-01-01', 0.1403509,  0.2,       0.5469256,  0.08187135,
                '2002-01-01', 0.3571429,  1,         1,          0.2142857, 
                '2003-01-01', 0.2888889,  0.7142857, 0.7777778,  0.1555556,
                "2004-01-01", 0.1403509,  0.8918919, 0.9087948,  0.08187135, 
                "2005-01-01", 0.0952381, -0.1111111, 0.1304348,  0.2380952, 
                "2006-01-01", 0.1785714,  0.6577947, 0.7247706,  0.07142857, 
                "2007-01-01", 0.2789474,  0.1407942, 0.3789954,  0.08947368,
                "2008-01-01", 0.05,      -0.1764706, 0.5488722,  0.08333333, 
                "2009-01-01", 0.1223329,  0.667063,  0.776,      0.0398293, 
                "2010-01-01", 0.1763975,  0.1718706, 0.517133,  0.02650104,
                "2011-01-01", 0.1048621,  0.6226994, 0.6914974,  0.02975327, 
                "2012-01-01", 0.09654819, 0.2922161, 0.6861206,  0.02187286, 
                "2013-01-01", 0.07023411, 0.7161352, 0.8299584,  0.01767797, 
                "2014-01-01", 0.05683962, 0.4484132, 0.6554656,  0.01234277,
                "2015-01-01", 0.1463731,  0.3853467, 0.4190251,   0.009876943,
                "2016-01-01", 0.07179487, 0.3950186, 0.4190251,   0.01347645,
                "2017-01-01", 0.05668194, 0.5925338, 0.6971441,  0.01073379,
                "2018-01-01", 0.06923988, 0.6607581, 0.743522,  0.008808904,
                "2019-01-01", 0.05798701, 0.490566,  0.6138306,  0.01058442,
                "2020-01-01", 0.09127707, 0.4051079, 0.5693122,  0.007488363)
data                
data$year <-as.POSIXct(data$year,"%Y-%m-%d",tz = "UTC")


c <- ggplot(data, aes(x = Year, y = Centralization)) +
  geom_line(size=1.2) +
  geom_point(size=5) +
  
  theme_bw() + 
  scale_x_continuous(breaks = seq(min(data$Year), max(data$Year), by = 1)) +

  # Labels
  labs(x= '', y= 'Centralization') +
  
  #Axis  
  theme(axis.title.x = element_text(size = 16, angle = 0)) + # axis x
  theme(axis.title.y = element_text(size = 16, angle = 90)) + # axis y
  theme(axis.text.x=element_text(angle=0, size=14, vjust=0.5, color="black")) + #subaxis x
  theme(axis.text.y=element_text(angle=0, size=14, vjust=0.5, color="black"))  #subaxis y
c
min(data$Centralization)
max(data$Centralization)


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

Fig.2 <- c / h + plot_annotation(tag_levels = 'A')
Fig.2 + ggsave("Figure 2.jpg",width = 200, height = 220, units = "mm")

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




