



# ---------------------------------------------
# script description
# 19 Jun 2022
# Pablo E. Gutiérrez-Fonseca
# pabloe.gutierrezfonseca@gmail.com
# ---------------------------------------------
#  


df.t <- rbind(n.2000, n.2001, n.2002, n.2003, n.2004, n.2005,
              n.2006, n.2007, n.2008, n.2009, n.2010, n.2011,
              n.2012, n.2013, n.2014, n.2015, n.2016, n.2017,
              n.2018, n.2019, n.2020)

df.t %>% 
  group_by(year) %>% 
  summarise(papers = n_distinct(PubID),
            authors = n_distinct(abrev),
            country = n_distinct(country))


# Frecuencia, numero de Paises en cada paper
df.t %>% 
  group_by(year,country,PubID) %>% 
  summarise(Freq=n())


df.f <- df.t %>% 
  group_by(year,PubID) %>% 
  summarise(count = n_distinct(country))

