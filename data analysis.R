



# ---------------------------------------------
# Data analysis and summary
# 19 Jun 2022
# Pablo E. Gutiérrez-Fonseca
# pabloe.gutierrezfonseca@gmail.com
# ---------------------------------------------
#  



# cleans global environment
rm(list = ls())


# Analysis include duplicated authors and countries
# Analysis GLM for Figure 3


network.data <- "data/data2000_2005.xlsx"
excel_sheets(path = network.data)

n.2000 <- read_excel(path = network.data, sheet = "2000nodes")
n.2001 <- read_excel(path = network.data, sheet = "2001nodes")
n.2002 <- read_excel(path = network.data, sheet = "2002nodes")
n.2003 <- read_excel(path = network.data, sheet = "2003nodes")
n.2004 <- read_excel(path = network.data, sheet = "2004nodes")
n.2005 <- read_excel(path = network.data, sheet = "2005nodes")

network.data <- "data/data2006_2010.xlsx"
excel_sheets(path = network.data)

n.2006 <- read_excel(path = network.data, sheet = "2006nodes")
n.2007 <- read_excel(path = network.data, sheet = "2007nodes")
n.2008 <- read_excel(path = network.data, sheet = "2008nodes")
n.2009 <- read_excel(path = network.data, sheet = "2009nodes")
n.2010 <- read_excel(path = network.data, sheet = "2010nodes")

network.data <- "data/data2011_2015.xlsx"
excel_sheets(path = network.data)

n.2011 <- read_excel(path = network.data, sheet = "2011nodes")
n.2012 <- read_excel(path = network.data, sheet = "2012nodes")
n.2013 <- read_excel(path = network.data, sheet = "2013nodes")
n.2014 <- read_excel(path = network.data, sheet = "2014nodes")
n.2015 <- read_excel(path = network.data, sheet = "2015nodes")

network.data <- "data/data2016_2020.xlsx"
excel_sheets(path = network.data)

n.2016 <- read_excel(path = network.data, sheet = "2016nodes")
n.2017 <- read_excel(path = network.data, sheet = "2017nodes")
n.2018 <- read_excel(path = network.data, sheet = "2018nodes")
n.2019 <- read_excel(path = network.data, sheet = "2019nodes")
n.2020 <- read_excel(path = network.data, sheet = "2020nodes")

network.data <- "data/data2000_2020.xlsx" # add single author paper
excel_sheets(path = network.data) # add single author paper

n.2000_20 <- read_excel(path = network.data, sheet = "2000-20nodes")

df.t <- rbind(n.2000, n.2001, n.2002, n.2003, n.2004, n.2005,
              n.2006, n.2007, n.2008, n.2009, n.2010, n.2011,
              n.2012, n.2013, n.2014, n.2015, n.2016, n.2017,
              n.2018, n.2019, n.2020, n.2000_20)

write.csv(df.t, file = "df_total.csv")


# -------------------------------------------------------------------------
# Frequency, Numbers of countries per paper

df.f <- df.t %>% 
  group_by(year,PubID) %>% 
  summarise(count = n_distinct(country))

c <- ggplot(df.f, aes(x = year, y = count), )+
  geom_jitter(width=0.1, height = 0.1, size=1.5) +
  scale_y_continuous(limits=c(0,20), breaks=seq(0,20, by = 4)) +
  geom_smooth(method = "glm", se = T, color="black",
              method.args = list(family = "poisson")) +
  theme_bw() + 
  
  # Labels
  labs(x= '', y= 'Numbers of countries per paper') +
  
  #Axis  
  theme(axis.title.x = element_text(size = 16, angle = 0)) + # axis x
  theme(axis.title.y = element_text(size = 16, angle = 90)) + # axis y
  theme(axis.text.x=element_text(angle=0, size=14, vjust=0.5, color="black")) + #subaxis x
  theme(axis.text.y=element_text(angle=0, size=14, vjust=0.5, color="black"))  #subaxis y
c

# test previous number
test <- df.t %>% select(year,country,PubID) %>% 
  filter(year==2000) %>% 
  filter(PubID==7) 

length(unique(test$country))

mod3 <- glm(count~year, family=poisson, data=df.f)
summary(mod3)


# -------------------------------------------------------------------------
# Frecuencia, numero de autores en cada paper 
df.a <- df.t %>% 
  group_by(year,PubID) %>% 
  summarise(count.autors = n_distinct(abrev))  

a <-   ggplot(df.a, aes(x = year, y = count.autors), )+
  geom_jitter(width=0.1, height = 0.1,size=1.5)   +
  scale_y_continuous(limits=c(0,33), breaks=seq(0,33, by = 5)) +
  geom_smooth(method = "glm", se = T,  color='black',
              method.args = list(family = "poisson")) +
  
  theme_bw() + 
  
  # Labels
  labs(x= 'Year', y= 'Numbers of authors per paper') +
  
  #Axis  
  theme(axis.title.x = element_text(size = 16, angle = 0)) + # axis x
  theme(axis.title.y = element_text(size = 16, angle = 90)) + # axis y
  theme(axis.text.x=element_text(angle=0, size=14, vjust=0.5, color="black")) + #subaxis x
  theme(axis.text.y=element_text(angle=0, size=14, vjust=0.5, color="black"))  #subaxis y
a

mod4 <- glm(count.autors~year, family=poisson, data=df.a)
summary(mod4)

Fig3 <- c / a
# Fig3 +  ggsave("Figure 3.jpg",width = 200, height = 220, units = "mm")


# Extra -------------------------------------------------------------------

df.t %>% 
  group_by(year) %>% 
  summarise(papers = n_distinct(PubID),
            authors = n_distinct(abrev),
            country = n_distinct(country))


# Frecuencia, numero de Paises en cada paper
df.t %>% 
  group_by(year,country,PubID) %>% 
  summarise(Freq=n()) 


# Frecuencia, numero de Paises
df.t %>% 
  group_by(country) %>% 
  summarise(Freq=n()) %>% 
  arrange(desc(Freq)) %>% 
  adorn_totals('row', fill = NA) %>%
  print(n = Inf)


# Number or authors (df.t$abrev) or countries (df.t$country)
unique(df.t$abrev)
length(unique(df.t$abrev)) # REAL NUMBER OF UNIQUE AUTHORS
df.t %>% distinct(abrev) # same as length(unique()) 


# Total papers in our survey
df.total <- df.t %>% group_by(year,PubID) %>% filter(row_number()==1) 
as.data.frame(df.total) %>% 
  count() 


# Author affiliation per Country
# Include authors with double or triple affiliation
df <- unique(df.t[c("abrev", "country")])
df
# write.csv(df, file = "authors_per_country.csv")



# Duplicate due to changes in affiliation of authors
df$abrev[duplicated(df$abrev)]

df[df$abrev == 'LH', c('abrev','country')]
df[df$abrev == 'LB', c('abrev','country')]


dup <- df[duplicated(df$abrev),] %>% 
  print(n = Inf) 

duptable <- table(dup$abrev) 
duptable[order(duptable)] 


# Percentage of countries represented in the data set.
# Author affiliation. Include author that change affiliation. 
df.country <- table(df$country)/nrow(df)*100

perct_country <- df.country %>% 
  as.data.frame() %>% 
  arrange(desc(Freq))
perct_country




