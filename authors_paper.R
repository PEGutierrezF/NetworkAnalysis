



# ---------------------------------------------
# Number of countries and authors per paper
# 19 Jun 2022
# Pablo E. Gutiérrez-Fonseca
# pabloe.gutierrezfonseca@gmail.com
# ---------------------------------------------
#  


df.t <- rbind(n.2000, n.2001, n.2002, n.2003, n.2004, n.2005,
              n.2006, n.2007, n.2008, n.2009, n.2010, n.2011,
              n.2012, n.2013, n.2014, n.2015, n.2016, n.2017,
              n.2018, n.2019, n.2020)


# -------------------------------------------------------------------------
# Frecuencia, numero de Paises en cada paper
df.f <- df.t %>% 
  group_by(year,PubID) %>% 
  summarise(count = n_distinct(country))

c <- ggplot(df.f, aes(x = year, y = count), )+
  geom_jitter(width=0.1, height = 0.1, size=1.5) +
  scale_y_continuous(limits=c(0,18), breaks=seq(0,18, by = 4)) +
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


# test previous number
test <- df.t %>% select(year,country,PubID) %>% 
  filter(year==2015) %>% 
  filter(PubID==21) 

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
  scale_y_continuous(limits=c(0,30), breaks=seq(0,30, by = 5)) +
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


mod4 <- glm(count.autors~year, family=poisson, data=df.a)
summary(mod4)

Fig3 <- c / a
Fig3 +  ggsave("Figure 3.jpg",width = 200, height = 220, units = "mm")

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
