



# ---------------------------------------------
# First author analysis
# 22 Jun 2022
# Pablo E. Gutiérrez-Fonseca
# pabloe.gutierrezfonseca@gmail.com
# ---------------------------------------------
# 

data.n.papers <- tribble(~year, ~papers, ~authors, ~authors_LA,
                         ~First_authors_Eur, ~First_authors_LA, ~First_authors_NA, 
                         '2000-01-01', 3,  7,  7,    0, 3, 0,
                         '2001-01-01', 8,  20, 15,   2, 5, 1,
                         '2002-01-01', 4,  9,  5,    3, 1, 0,
                         '2003-01-01', 5,  12, 2,    2, 1, 2,
                         "2004-01-01", 9,  21, 8,    4, 3, 2, 
                         "2005-01-01", 5,  8,  6,    1, 4, 0,
                         "2006-01-01", 8,  23, 9,    2, 2, 4,
                         "2007-01-01", 5,  20, 14,   2, 2, 1,
                         "2008-01-01", 7,  17, 14,   3, 4, 0,
                         "2009-01-01", 11, 38, 23,   1, 7, 3,
                         "2010-01-01", 20, 71, 49,   3, 16, 1,
                         "2011-01-01", 16, 55, 42,   2, 12, 2,
                         "2012-01-01", 20, 77, 62,   1, 18, 1, 
                         "2013-01-01", 33, 90, 74,   1, 28, 4,
                         "2014-01-01", 54, 159, 131, 6, 46, 2,
                         "2015-01-01", 41, 191, 137, 6, 33, 2,
                         "2016-01-01", 35, 127, 100, 4, 29, 2,
                         "2017-01-01", 47, 179, 140, 3, 38, 6,
                         "2018-01-01", 46, 207, 141, 8, 34, 4,
                         "2019-01-01", 38, 176, 140, 4, 33, 1,
                         "2020-01-01", 49, 244, 170, 2, 40, 7,
)

data.n.papers                
data.n.papers$year <-as.POSIXct(data.n.papers$year,"%Y-%m-%d",tz = "UTC")


# Select authors and authors from Latin America
df.firstaut <- data.n.papers %>% 
  select(year, First_authors_Eur, First_authors_LA,
         First_authors_NA) %>% 
  tidyr::pivot_longer(cols=c('First_authors_Eur','First_authors_LA',
                             'First_authors_NA'),
                      names_to = 'firstauthors', 
                      values_to= 'value')
df.firstaut


fa <- ggplot(df.firstaut, aes(x=year, y=value, linetype=firstauthors)) + 
  geom_smooth(se=T, color = "black", show.legend = F, alpha = 0.3) + 
   geom_smooth(se=F, color = "black") + # remove background 
  geom_point(size = 2) +

  theme_bw() +
  # Labels
  labs(x= 'Year', y= 'Origin of first author') +
  scale_y_continuous(limits=c(0,50), breaks=seq(0,50, by = 10),
                     oob=rescale_none) +
  
  #Legend
  theme(legend.title=element_blank()) + 
  
  theme(legend.text = element_text(color = "black", size = 14))+  #factor name
  scale_linetype_manual("",values =c("solid","dotdash",'dotted'),
                        breaks=c("First_authors_LA","First_authors_Eur", 
                                 'First_authors_NA'), 
                        labels=c("Latin America", 'Europe', 'North America')) + 
  theme(legend.position=c(.18,.80)) +
  
  #Axis  
  theme(axis.title.x = element_text(size = 16, angle = 0)) + # axis x
  theme(axis.title.y = element_text(size = 16, angle = 90)) + # axis y
  theme(axis.text.x=element_text(angle=0, size=14, vjust=0.5, color="black")) + #subaxis x
  theme(axis.text.y=element_text(angle=0, size=14, vjust=0.5, color="black"))  #subaxis y
fa  
