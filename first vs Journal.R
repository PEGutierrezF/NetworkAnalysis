


# ---------------------------------------------
# First Authors and Journal Origin
# 04 Jul 2022
# Pablo E. Gutiérrez-Fonseca
# pabloe.gutierrezfonseca@gmail.com
# ---------------------------------------------
#  




# cleans global environment
rm(list = ls())



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

df.journals <- rbind(n.2000, n.2001, n.2002, n.2003, n.2004, n.2005,
                     n.2006, n.2007, n.2008, n.2009, n.2010, n.2011,
                     n.2012)



# Latin American as first Authors -----------------------------------------

first.auth.LA <- df.journals %>% 
  group_by(PubID) %>% 
  filter(row_number()==1) 

a <- ggplot(first.auth.LA, aes(axis1 = affiliation, axis2 = Jour_continent)) +
  geom_alluvium(aes(fill = Jour_continent)) +
  scale_x_discrete(limits = c("Origin of First Author", "Origin of the Journal"))+
  geom_stratum(width = 1/3) +
  geom_text(stat = "stratum", aes(label = after_stat(stratum))) +
  
  theme_bw() +
  theme(legend.position = "none", panel.grid.major = element_blank(), 
        panel.grid.minor = element_blank(), axis.text.y = element_blank(), 
        axis.text.x = element_text(size = 16, color='black', face = "bold")) +
  theme(legend.position = "none")
a


last.auth.LA <- df.journals %>% 
  group_by(PubID) %>% 
  filter(row_number()==n())

b <- ggplot(last.auth.LA, aes(axis1 = affiliation, axis2 = Jour_continent)) +
  geom_alluvium(aes(fill = Jour_continent)) +
  scale_x_discrete(limits = c("Origin of Last Author", "Origin of the Journal"))+
  geom_stratum(width = 1/3) +
  geom_text(stat = "stratum", aes(label = after_stat(stratum))) +
  
  theme_bw() +
  theme(legend.position = "none", panel.grid.major = element_blank(), 
        panel.grid.minor = element_blank(), axis.text.y = element_blank(), 
        axis.text.x = element_text(size = 16, color='black', face = "bold")) +
  theme(legend.position = "none")
b


