



# ---------------------------------------------
# Co-authorship trends 
# 22 Jun 2022
# Pablo E. Gutiérrez-Fonseca
# pabloe.gutierrezfonseca@gmail.com
# ---------------------------------------------
#  

# Add row: single author paper
a.2001n <- a.2001 %>% add_row(main="URV", 
                              coauthor="URV", PubID=14,year=2001)

a.2002n <- a.2002 %>% add_row(main="TG", 
                              coauthor="TG", PubID=15,year=2002)

a.2003n <- a.2003 %>% add_row(main=c("BSS","ZB"), 
                              coauthor=c("BSS","ZB"), 
                              PubID=c(13,14),year=c(2003, 2003))

a.2004n <- a.2004 %>% add_row(main=c("BSS","TG"), 
                              coauthor=c("BSS","TG"), 
                              PubID=c(13,14),year=c(2004, 2004))

a.2005n <- a.2005 %>% add_row(main="DJ", 
                              coauthor="DJ", PubID=21,year=2005)

a.2006n <- a.2006 %>% add_row(main=c("KMW","APC"), 
                              coauthor=c("KMW","APC"), 
                              PubID=c(22,23),year=c(2006, 2006))
a.2008n <- a.2008 %>% add_row(main="DJ", 
                              coauthor="DJ", PubID=32,year=2008)
a.2010n <- a.2010 %>% add_row(main="LMM", 
                              coauthor="LMM", PubID=46,year=2010)
a.2011n <- a.2011 %>% add_row(main="ARC", 
                              coauthor="ARC", PubID=38,year=2011)

# Number of papers ---------------------------------------------------------------
{
  length(unique(a.2000$PubID))
  length(unique(a.2001n$PubID)) # I added new row
  length(unique(a.2002n$PubID)) # I added new row
  length(unique(a.2003n$PubID)) # I added new row
  length(unique(a.2004n$PubID)) # I added new row
  length(unique(a.2005n$PubID)) # I added new row
  length(unique(a.2006n$PubID)) # I added new row
  length(unique(a.2007$PubID))
  length(unique(a.2008n$PubID)) # I added new row
  length(unique(a.2009$PubID))
  length(unique(a.2010n$PubID)) # I added new row
  length(unique(a.2011n$PubID)) # I added new row
  length(unique(a.2012$PubID))
  length(unique(a.2013$PubID))
  length(unique(a.2014$PubID))
  length(unique(a.2015$PubID))
  length(unique(a.2016$PubID))
  length(unique(a.2017$PubID))
  length(unique(a.2018$PubID))
  length(unique(a.2019$PubID))
  length(unique(a.2020$PubID))
}


# Total number of authors ---------------------------------------------------------------

# Add row: single author paper
add.2001 <- n.2000_20 %>% filter(year==2001)
n.2001n <- rbind(n.2001, add.2001)

add.2002 <- n.2000_20 %>% filter(year==2002)
n.2002n <- rbind(n.2002, add.2002)

add.2003 <- n.2000_20 %>% filter(year==2003)
n.2003n <- rbind(n.2003, add.2003)

add.2004 <- n.2000_20 %>% filter(year==2004)
n.2004n <- rbind(n.2004, add.2004)

add.2005 <- n.2000_20 %>% filter(year==2005)
n.2005n <- rbind(n.2005, add.2005)

add.2006 <- n.2000_20 %>% filter(year==2006)
n.2006n <- rbind(n.2006, add.2006)

add.2008 <- n.2000_20 %>% filter(year==2008)
n.2008n <- rbind(n.2008, add.2008)

add.2010 <- n.2000_20 %>% filter(year==2010)
n.2010n <- rbind(n.2010, add.2010)

add.2011 <- n.2000_20 %>% filter(year==2011)
n.2011n <- rbind(n.2011, add.2011)

{
  length(unique(n.2000$abrev))
  length(unique(n.2001n$abrev)) # I added new row
  length(unique(n.2002n$abrev)) # I added new row
  length(unique(n.2003n$abrev)) # I added new row
  length(unique(n.2004n$abrev)) # I added new row
  length(unique(n.2005n$abrev)) # I added new row
  length(unique(n.2006n$abrev)) # I added new row
  length(unique(n.2007$abrev))
  length(unique(n.2008n$abrev)) # I added new row
  length(unique(n.2009$abrev))
  length(unique(n.2010n$abrev)) # I added new row
  length(unique(n.2011n$abrev)) # I added new row
  length(unique(n.2012$abrev))
  length(unique(n.2013$abrev))
  length(unique(n.2014$abrev))
  length(unique(n.2015$abrev))
  length(unique(n.2016$abrev))
  length(unique(n.2017$abrev))
  length(unique(n.2018$abrev))
  length(unique(n.2019$abrev))
  length(unique(n.2020$abrev))
}

# Number of authors from ---------------------------------------------------------------
{
  n.2000 %>% distinct(abrev, .keep_all = TRUE) %>% count(affiliation)
  n.2001n %>% distinct(abrev, .keep_all = TRUE) %>% count(affiliation)# I added new row
  n.2002n %>% distinct(abrev, .keep_all = TRUE) %>% count(affiliation)# I added new row
  n.2003n %>% distinct(abrev, .keep_all = TRUE) %>% count(affiliation)# I added new row
  n.2004n %>% distinct(abrev, .keep_all = TRUE) %>% count(affiliation)# I added new row
  n.2005n %>% distinct(abrev, .keep_all = TRUE) %>% count(affiliation)# I added new row
  n.2006n %>% distinct(abrev, .keep_all = TRUE) %>% count(affiliation)# I added new row
  n.2007 %>% distinct(abrev, .keep_all = TRUE) %>% count(affiliation)
  n.2008n %>% distinct(abrev, .keep_all = TRUE) %>% count(affiliation)# I added new row
  n.2009 %>% distinct(abrev, .keep_all = TRUE) %>% count(affiliation)
  n.2010n %>% distinct(abrev, .keep_all = TRUE) %>% count(affiliation)# I added new row
  n.2011n %>% distinct(abrev, .keep_all = TRUE) %>% count(affiliation)# I added new row
  n.2012 %>% distinct(abrev, .keep_all = TRUE) %>% count(affiliation)
  n.2013 %>% distinct(abrev, .keep_all = TRUE) %>% count(affiliation)
  n.2014 %>% distinct(abrev, .keep_all = TRUE) %>% count(affiliation)
  n.2015 %>% distinct(abrev, .keep_all = TRUE) %>% count(affiliation)
  n.2016 %>% distinct(abrev, .keep_all = TRUE) %>% count(affiliation)
  n.2017 %>% distinct(abrev, .keep_all = TRUE) %>% count(affiliation)
  n.2018 %>% distinct(abrev, .keep_all = TRUE) %>% count(affiliation)
  n.2019 %>% distinct(abrev, .keep_all = TRUE) %>% count(affiliation)
  n.2020 %>% distinct(abrev, .keep_all = TRUE) %>% count(affiliation)
  
}

data.n.papers <- tribble(~year, ~papers, ~authors, ~authors_LA,
                         '2000-01-01', 3,  7,  7,
                         '2001-01-01', 8,  20, 15,
                         '2002-01-01', 4,  9,  5,
                         '2003-01-01', 5,  12, 2,
                         "2004-01-01", 9,  21, 8,
                         "2005-01-01", 5,  8,  6,
                         "2006-01-01", 8,  23, 9,
                         "2007-01-01", 5,  20, 14,
                         "2008-01-01", 7,  17, 14,
                         "2009-01-01", 11, 38, 23,
                         "2010-01-01", 20, 71, 49,
                         "2011-01-01", 16, 55, 42,
                         "2012-01-01", 20, 77, 62,
                         "2013-01-01", 33, 90, 74,
                         "2014-01-01", 54, 159, 131,
                         "2015-01-01", 41, 191, 137,
                         "2016-01-01", 35, 127, 100,
                         "2017-01-01", 47, 179, 140, 
                         "2018-01-01", 46, 207, 141,
                         "2019-01-01", 38, 176, 140,
                         "2020-01-01", 49, 244, 170
)

data.n.papers                
data.n.papers$year <-as.POSIXct(data.n.papers$year,"%Y-%m-%d",tz = "UTC")

p <- ggplot(data.n.papers, aes(x = year, y = papers)) + 
  geom_bar(stat="identity") +
  
  # Scale
  ylim(0,60) +
  
  theme_bw() +
  # Labels
  labs(x= '', y= 'Numbers of papers') +
  #Axis  
  theme(axis.title.x = element_text(size = 16, angle = 0)) + # axis x
  theme(axis.title.y = element_text(size = 16, angle = 90)) + # axis y
  theme(axis.text.x=element_text(angle=0, size=14, vjust=0.5, color="black")) + #subaxis x
  theme(axis.text.y=element_text(angle=0, size=14, vjust=0.5, color="black"))  #subaxis y
p

# Select authors and authors from Latin America
df <- data.n.papers %>% 
  select(year, authors, authors_LA) %>% 
  tidyr::pivot_longer(cols=c('authors','authors_LA'),
                      names_to = 'coauthors', 
                      values_to= 'value')
df


ca <- ggplot(df, aes(x=year,y=value, linetype=coauthors)) + 
  geom_line(size=1) + geom_point(size = 4) +
  
  theme_bw() +
  # Labels
  labs(x= 'Year', y= 'Numbers of authors') +
  
  #Legend
  theme(legend.title=element_blank()) +
  theme(legend.text = element_text(color = "black", size = 14))+  #factor name
  scale_linetype_manual("",values =c("solid","dotdash"),
                        breaks=c("authors", "authors_LA"), 
                        labels=c("Total","Latin America"))+ 
  theme(legend.position=c(.18,.85)) +
  
  #Axis  
  theme(axis.title.x = element_text(size = 16, angle = 0)) + # axis x
  theme(axis.title.y = element_text(size = 16, angle = 90)) + # axis y
  theme(axis.text.x=element_text(angle=0, size=14, vjust=0.5, color="black")) + #subaxis x
  theme(axis.text.y=element_text(angle=0, size=14, vjust=0.5, color="black"))  #subaxis y
ca

Fig <- p / ca
Fig +  ggsave("Figure 1.jpg",width = 200, height = 220, units = "mm")



# other -------------------------------------------------------------------


s <- ggplot(df, aes(x=year, y=value, linetype=coauthors)) + 
  geom_smooth(se=T, color = "black",show.legend = FALSE, alpha = 0.3) + 
  # geom_smooth(se=F, color = "black") + # remove background 
  geom_point(size = 2) +
  
  theme_bw() +
  # Labels
  labs(x= 'Year', y= 'Numbers of authors') +
  scale_y_continuous(limits=c(0,250), breaks=seq(0,250, by = 50)) +
  
  #Legend
  theme(legend.title=element_blank()) + 
  
  theme(legend.text = element_text(color = "black", size = 14))+  #factor name
  scale_linetype_manual("",values =c("solid","dotdash"),
                        breaks=c("authors", "authors_LA"), 
                        labels=c("Total","Latin America")) + 
  theme(legend.position=c(.18,.85)) +
  
  #Axis  
  theme(axis.title.x = element_text(size = 16, angle = 0)) + # axis x
  theme(axis.title.y = element_text(size = 16, angle = 90)) + # axis y
  theme(axis.text.x=element_text(angle=0, size=14, vjust=0.5, color="black")) + #subaxis x
  theme(axis.text.y=element_text(angle=0, size=14, vjust=0.5, color="black"))  #subaxis y
s


Fig.4 <- p / s
Fig.4 +  ggsave("Figure 4.jpg",width = 200, height = 220, units = "mm")
