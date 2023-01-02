



# ---------------------------------------------
# First author analysis
# 22 Jun 2022
# Pablo E. Gutiérrez-Fonseca
# pabloe.gutierrezfonseca@gmail.com
# ---------------------------------------------
# 



data.n.papers <- tribble(~year, ~papers, ~total_authors, ~authors_LA, ~country,
                         ~First_authors_Eur, ~First_authors_LA, ~First_authors_NA, 
                         '2000-01-01', 3,  7,  7,    3,    0, 3, 0,
                         '2001-01-01', 8,  20, 15,   8,    2, 5, 1,
                         '2002-01-01', 4,  9,  5,    3,    3, 1, 0,
                         '2003-01-01', 5,  12, 2,    5,    2, 1, 2,
                         "2004-01-01", 9,  21, 8,    6,    4, 3, 2, 
                         "2005-01-01", 5,  8,  6,    4,    1, 4, 0,
                         "2006-01-01", 8,  22, 9,    6,    2, 2, 4,
                         "2007-01-01", 5,  20, 14,   9,    2, 2, 1,
                         "2008-01-01", 7,  17, 14,   6,    3, 4, 0,
                         "2009-01-01", 11, 38, 23,   6,    1, 7, 3,
                         "2010-01-01", 20, 71, 49,   14,   3, 16, 1,
                         "2011-01-01", 16, 54, 42,   11,   2, 12, 2,
                         "2012-01-01", 20, 77, 62,   10,   1, 18, 1, 
                         "2013-01-01", 33, 92, 76,   8,    1, 28, 4,
                         "2014-01-01", 54, 160, 132, 20,   6, 46, 2,
                         "2015-01-01", 41, 193, 138, 28,   6, 33, 2,
                         "2016-01-01", 35, 130, 101, 18,   4, 29, 2,
                         "2017-01-01", 47, 179, 140, 17,   3, 38, 6,
                         "2018-01-01", 46, 206, 141, 21,   8, 34, 4,
                         "2019-01-01", 38, 176, 140, 20,   4, 33, 1,
                         "2020-01-01", 49, 244, 170, 21,   2, 40, 7,
)

data.n.papers  
write_xlsx(data.n.papers,"summary.xlsx")

data.n.papers$year <-as.POSIXct(data.n.papers$year,"%Y-%m-%d",tz = "UTC")


# Select authors and authors from Latin America
df.first.author <- data.n.papers %>% 
  select(year, First_authors_Eur, First_authors_LA,
         First_authors_NA) %>% 
  tidyr::pivot_longer(cols=c('First_authors_Eur','First_authors_LA',
                             'First_authors_NA'),
                      names_to = 'firstauthors', 
                      values_to= 'value')
df.first.author


fa <- ggplot(df.first.author, aes(x=year, y=value, linetype=firstauthors)) + 
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


df.aLatam <- data.n.papers %>% select("year","First_authors_LA") # data frame, filter (select) by authors
mod5 <- glm(First_authors_LA~year, family=poisson, data=df.aLatam)
summary(mod5)

m1pred <- predict(mod5, type = "response")

plot(First_authors_LA~ year, df.aLatam)
lines(df.aLatam$year, m1pred, col = "blue", lwd = 2)
