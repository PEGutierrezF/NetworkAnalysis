



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
# Excluding duplicate authors (i.e., authors who publish 2 or more papers) in each year

# Add row: single author paper
add.2001 <- n.2000_20 %>% filter(year==2001)
n.2001n <- rbind(n.2001, add.2001)

add.2002 <- n.2000_20 %>% filter(year==2002)
n.2002n <- rbind(n.2002, add.2002)

add.2003 <- n.2000_20 %>% filter(year==2003)
n.2003n <- rbind(n.2003, add.2003)

add.2004 <- n.2000_20 %>% filter(year==2004) %>% print(n = Inf)
n.2004n <- rbind(n.2004, add.2004) %>% print(n = Inf)

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

# Number of authors by continent ---------------------------------------------------------------

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


# Latin American as first Authors -----------------------------------------

n.2000.L <- n.2000 %>% group_by(PubID) %>% filter(row_number()==1 | row_number()==n()) 
as.data.frame(n.2000.L) %>% count(affiliation)

n.2001.f <- n.2001n %>% group_by(PubID) %>% filter(row_number()==1)
as.data.frame(n.2001.f) %>% count(affiliation)
n.2001.L <- n.2001n %>% group_by(PubID) %>% filter(row_number()==n()) 
as.data.frame(n.2001.L) %>% count(affiliation)

n.2002.L <- n.2002n %>% group_by(PubID) %>% filter(row_number()==1) 
as.data.frame(n.2002.L) %>% count(affiliation)

n.2003.L <- n.2003n %>% group_by(PubID) %>% filter(row_number()==1) 
as.data.frame(n.2003.L) %>% count(affiliation)

n.2004.L <- n.2004n %>% group_by(PubID) %>% filter(row_number()==1) %>% print(n = Inf)
as.data.frame(n.2004.L) %>% count(affiliation)

n.2005.L <- n.2005n %>% group_by(PubID) %>% filter(row_number()==1) %>% print(n = Inf)
as.data.frame(n.2005.L) %>% count(affiliation)

n.2006.L <- n.2006n %>% group_by(PubID) %>% filter(row_number()==1) 
as.data.frame(n.2006.L) %>% count(affiliation)

n.2007.L <- n.2007 %>% group_by(PubID) %>% filter(row_number()==1) 
as.data.frame(n.2007.L) %>% count(affiliation)

n.2008.L <- n.2008n %>% group_by(PubID) %>% filter(row_number()==1) 
as.data.frame(n.2008.L) %>% count(affiliation)

n.2009.L <- n.2009 %>% group_by(PubID) %>% filter(row_number()==1) 
as.data.frame(n.2009.L) %>% count(affiliation)

n.2010.L <- n.2010n %>% group_by(PubID) %>% filter(row_number()==1) 
as.data.frame(n.2010.L) %>% count(affiliation)

n.2011.L <- n.2011n %>% group_by(PubID) %>% filter(row_number()==1) 
as.data.frame(n.2011.L) %>% count(affiliation)

n.2012.L <- n.2012 %>% group_by(PubID) %>% filter(row_number()==1) 
as.data.frame(n.2012.L) %>% count(affiliation)

n.2013.L <- n.2013 %>% group_by(PubID) %>% filter(row_number()==1) 
as.data.frame(n.2013.L) %>% count(affiliation)

n.2014.L <- n.2014 %>% group_by(PubID) %>% filter(row_number()==1) 
as.data.frame(n.2014.L) %>% count(affiliation)

n.2015.L <- n.2015 %>% group_by(PubID) %>% filter(row_number()==1) 
as.data.frame(n.2015.L) %>% count(affiliation)

n.2016.L <- n.2016 %>% group_by(PubID) %>% filter(row_number()==1) 
as.data.frame(n.2016.L) %>% count(affiliation)

n.2017.L <- n.2017 %>% group_by(PubID) %>% filter(row_number()==1) 
as.data.frame(n.2017.L) %>% count(affiliation)

n.2018.f <- n.2018 %>% group_by(PubID) %>% filter(row_number()==1) 
as.data.frame(n.2018.f) %>% count(affiliation)
n.2018.L <- n.2018 %>% group_by(PubID) %>% filter(row_number()==n()) 
as.data.frame(n.2018.L) %>% count(affiliation)

n.2019.f <- n.2019 %>% group_by(PubID) %>% filter(row_number()==1) 
as.data.frame(n.2019.f) %>% count(affiliation)
n.2019.L <- n.2019 %>% group_by(PubID) %>% filter(row_number()==n()) 
as.data.frame(n.2019.L) %>% count(affiliation)

n.2020.f <- n.2020 %>% group_by(PubID) %>% filter(row_number()==1) 
as.data.frame(n.2020.f) %>% count(affiliation)
n.2020.L <- n.2020 %>% group_by(PubID) %>% filter(row_number()==n()) 
as.data.frame(n.2020.L) %>% count(affiliation)

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
  theme(axis.text.x=element_blank()) +
  # theme(axis.text.x=element_text(angle=0, size=14, vjust=0.5, color="black")) + #subaxis x
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
  labs(x= '', y= 'Numbers of authors') +
  
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
  theme(axis.text.x=element_blank()) +
  #theme(axis.text.x=element_text(angle=0, size=14, vjust=0.5, color="black")) + #subaxis x
  theme(axis.text.y=element_text(angle=0, size=14, vjust=0.5, color="black"))  #subaxis y
ca

Fig <- p / ca
Fig +  ggsave("Figure 1.jpg",width = 200, height = 220, units = "mm")



# other -------------------------------------------------------------------


s <- ggplot(df, aes(x=year, y=value, linetype=coauthors)) + 
  geom_smooth(se=T, color = "black",show.legend = FALSE, alpha = 0.3) + 
  geom_smooth(se=F, color = "black") + # remove background 
  geom_point(size = 2) +
  
  theme_bw() +
  # Labels
  labs(x= '', y= 'Numbers of authors') +
  scale_y_continuous(limits=c(0,250), breaks=seq(0,250, by = 50), 
                     oob=rescale_none) +
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
  theme(axis.text.x=element_blank()) +
  #theme(axis.text.x=element_text(angle=0, size=14, vjust=0.5, color="black")) + #subaxis x
  theme(axis.text.y=element_text(angle=0, size=14, vjust=0.5, color="black"))  #subaxis y
s


Fig.4 <- p / s / fa
Fig.4 +  ggsave("Figure 4.jpg",width = 250, height = 350, units = "mm")


