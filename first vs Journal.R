


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

df.journals <- rbind(n.2000, n.2001, n.2002, n.2003, n.2004, n.2005,
              n.2006, n.2007, n.2008, n.2009, n.2010, n.2011,
              n.2012, n.2013, n.2014, n.2015, n.2016, n.2017,
              n.2018, n.2019, n.2020, n.2000_20)


# Latin American as first Authors -----------------------------------------

first.auth.LA <- df.journals %>% 
  group_by(PubID) %>% 
  filter(row_number()==1) 

first.auth.LA$affiliation <- factor(first.auth.LA$affiliation, 
                                    levels = c("Latin America", "Europe", "North America"))

a <- ggplot(first.auth.LA, aes(axis1 = affiliation, axis2 = Jour_continent)) +
  geom_alluvium(aes(fill = Jour_continent)) +
  scale_x_discrete(limits = c("Origin of First Author", "Origin of the Journal"))+

  geom_stratum() +
  geom_text(stat = "stratum", aes(label = after_stat(stratum))) +
  scale_fill_manual(values=c("#d95f0e", "#c51b8a", 
                             "#045a8d", "#de2d26", "#31a354"))+
  
  theme_bw() +
  theme(legend.position = "none", panel.grid.major = element_blank(), 
        panel.grid.minor = element_blank(), axis.text.y = element_blank(), 
        axis.text.x = element_text(size = 16, color='black', face = "bold")) +
  theme(legend.position = "none")
a




df <- first.auth.LA %>% 
  group_by(affiliation, Jour_continent) %>%   # grouping
  summarise(Freq = n())


flow <- ggplot(data=df, aes(y = Freq, axis1 = affiliation, 
                            axis2 = Jour_continent)) +
  geom_alluvium(aes(fill = Jour_continent), aes.bind=TRUE, 
                width = 1/12, curve_type = "sigmoid") +
  geom_stratum(width = 1/4, fill = "white", color = "black") +
  geom_text(stat = "stratum", aes(label = after_stat(stratum)),
            size=5) +
  scale_x_discrete(limits = c("Origin of First Author", 
                              "Origin of the Journal"),
                   expand = c(.05, .05)) +
  scale_fill_manual(values=c("#d95f0e", "#c51b8a", 
                             "#045a8d", "#de2d26", "#31a354")) +
  labs(y = "Freq") +
  theme_bw() +
  theme(legend.position = "none") +
  
  theme(axis.title.x = element_text(size = 12, angle = 0)) + # axis x
  theme(axis.title.y = element_text(size = 14, angle = 90)) + # axis y
  theme(axis.text.x=element_text(angle=0, size=14, vjust=0.5, color="black")) + #subaxis x
  theme(axis.text.y=element_text(angle=0, size=12, vjust=0.5, color="black"))   #subaxis y

flow   

flow +  ggsave("Figure 6.jpg",width = 250, height = 350, 
               units = "mm")

