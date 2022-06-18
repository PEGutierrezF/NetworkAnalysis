



# ---------------------------------------------
# Network Analysis
# 01 Mar 2022
# Pablo E. Gutiérrez-Fonseca
# pabloe.gutierrezfonseca@gmail.com
# ---------------------------------------------
#  



# cleans global environment
rm(list = ls())
#source_file = read.csv(file.choose(), sep = ";", header = F)


network.data <- "data/data2000_2005.xlsx"
excel_sheets(path = network.data)


###########################################################################
# 2000 --------------------------------------------------------------------
###########################################################################

a.2000 <- read_excel(path = network.data, sheet = "2000authors")
n.2000 <- read_excel(path = network.data, sheet = "2000nodes")

df2000a <- a.2000 %>% select(main, coauthor)
df2000b <- n.2000 %>% select(abrev, country, affiliation)

network2000 <- graph_from_data_frame(d=df2000a, vertices=df2000b, directed=F) # covert in a igraph

{
set.seed(14)
p2000 <- ggraph(network2000,layout = "gem")+
        geom_edge_link0(edge_colour = "black")+
        geom_node_point(aes(fill = affiliation, shape=affiliation),size = 3,
                        show.legend = FALSE)+
        #  scale_edge_colour_brewer(palette = "Set1") +
        scale_fill_manual(values=c("Africa" = "#fc8d59","Asia" = "#ffff99",
                                   "Europe" = "#7fc97f", "Latin America"="#4575b4",
                                   'North America'= "#d73027", "Oceania"="#c994c7"))+
        scale_shape_manual(values = c(21, 22,23, 24, 25,7))+
  
        labs(title="2000") +
        theme_bw()+
        theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank())+
        theme(axis.ticks.x = element_blank(),
              axis.text.x = element_blank()) +
        theme(axis.ticks.y = element_blank(),
              axis.text.y = element_blank()) +
        theme(axis.title.x = element_blank(),
              axis.title.y = element_blank())
}

p2000
#



###########################################################################
# 2001 --------------------------------------------------------------------
###########################################################################

# Upload data from excel
a.2001 <- read_excel(path = network.data, sheet = "2001authors")
n.2001 <- read_excel(path = network.data, sheet = "2001nodes")

# Select columns
df2001.a <- a.2001 %>% select(main, coauthor)

# remove duplicate
n.2001 <- n.2001[-c(18, 19), ]
df2001.n <- n.2001 %>% select(abrev, country, affiliation)

## covert in a igraph
network2001 <- graph_from_data_frame(d=df2001.a, vertices=df2001.n, directed=TRUE)

# plot
{set.seed(14)
p2001 <- ggraph(network2001,layout = "gem")+
  geom_edge_link0(edge_colour = "black")+
  geom_node_point(aes(fill = affiliation, shape=affiliation),size = 3,
                  show.legend = FALSE)+
  #  scale_edge_colour_brewer(palette = "Set1") +
  scale_fill_manual(values=c("Africa" = "#fc8d59","Asia" = "#ffff99",
                             "Europe" = "#7fc97f", "Latin America"="#4575b4",
                             'North America'= "#d73027", "Oceania"="#c994c7"))+
  scale_shape_manual(values = c(21, 22,23, 24, 25, 7))+
  
  labs(title="2001") +
  theme_bw()+
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank())+
  theme(axis.ticks.x = element_blank(),
        axis.text.x = element_blank()) +
  theme(axis.ticks.y = element_blank(),
        axis.text.y = element_blank()) +
  theme(axis.title.x = element_blank(),
        axis.title.y = element_blank())
}

p2001



###########################################################################
# 2002 --------------------------------------------------------------------
###########################################################################

# Upload data from excel
a.2002 <- read_excel(path = network.data, sheet = "2002authors")
n.2002 <- read_excel(path = network.data, sheet = "2002nodes")

# Select columns
df2002.a <- a.2002 %>% select(main, coauthor)

# remove duplicate
df2002.n <- n.2002[c(-8), ]
df2002.n <- df2002.n %>% select(abrev, country, affiliation)

## covert in a igraph
network2002 <- graph_from_data_frame(d=df2002.a, vertices=df2002.n, directed=TRUE)

# plot
{set.seed(14)
p2002 <- ggraph(network2002, layout = "gem")+
  geom_edge_link0(edge_colour = "black")+
  geom_node_point(aes(fill = affiliation, shape=affiliation),size = 3,
                  show.legend = FALSE)+
  #  scale_edge_colour_brewer(palette = "Set1") +
  scale_fill_manual(values=c("Africa" = "#fc8d59","Asia" = "#ffff99",
                             "Europe" = "#7fc97f", "Latin America"="#4575b4",
                             'North America'= "#d73027", "Oceania"="#c994c7"))+
  scale_shape_manual(values = c(21, 22,23, 24, 25, 7))+
  
  labs(title="2002") +
  theme_bw()+
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank())+
  theme(axis.ticks.x = element_blank(),
        axis.text.x = element_blank()) +
  theme(axis.ticks.y = element_blank(),
        axis.text.y = element_blank()) +
  theme(axis.title.x = element_blank(),
        axis.title.y = element_blank())
}
p2002



###########################################################################
# 2003 --------------------------------------------------------------------
###########################################################################

# Upload data from excel
a.2003 <- read_excel(path = network.data, sheet = "2003authors")
n.2003 <- read_excel(path = network.data, sheet = "2003nodes")

# Select columns
df2003.a <- a.2003 %>% select(main, coauthor)
df2003.n <- n.2003 %>% select(abrev, country, affiliation)

## covert in a igraph
network2003 <- graph_from_data_frame(d=df2003.a, vertices=df2003.n, directed=TRUE)

# plot
{set.seed(14)
  p2003 <- ggraph(network2003,layout = "gem")+
    geom_edge_link0(edge_colour = "black")+
    geom_node_point(aes(fill = affiliation, shape=affiliation),size = 3,
                    show.legend = FALSE)+
    #  scale_edge_colour_brewer(palette = "Set1") +
    scale_fill_manual(values=c("Africa" = "#fc8d59","Asia" = "#ffff99",
                               "Europe" = "#7fc97f", "Latin America"="#4575b4",
                               'North America'= "#d73027", "Oceania"="#c994c7"))+
    scale_shape_manual(values = c(21, 22,23, 24, 25, 7)) +
    
    labs(title="2003") +
    theme_bw()+
    theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank())+
    theme(axis.ticks.x = element_blank(),
          axis.text.x = element_blank()) +
    theme(axis.ticks.y = element_blank(),
          axis.text.y = element_blank()) +
    theme(axis.title.x = element_blank(),
          axis.title.y = element_blank())
}
p2003




###########################################################################
# 2004 --------------------------------------------------------------------
###########################################################################

# Upload data from excel
a.2004 <- read_excel(path = network.data, sheet = "2004authors")
n.2004 <- read_excel(path = network.data, sheet = "2004nodes")

# Select columns
df2004.a <- a.2004 %>% select(main, coauthor)

n.2004 <- n.2004[-c(20, 21), ]
df2004.n <- n.2004 %>% select(abrev, country, affiliation)

## covert in a igraph
network2004 <- graph_from_data_frame(d=df2004.a, vertices=df2004.n, directed=TRUE)

# plot
{set.seed(14)
  p2004 <- ggraph(network2004,layout = "gem")+
    geom_edge_link0(edge_colour = "black")+
    geom_node_point(aes(fill = affiliation, shape=affiliation),size = 3,
                    show.legend = FALSE)+
    #  scale_edge_colour_brewer(palette = "Set1") +
    scale_fill_manual(values=c("Africa" = "#fc8d59","Asia" = "#ffff99",
                               "Europe" = "#7fc97f", "Latin America"="#4575b4",
                               'North America'= "#d73027", "Oceania"="#c994c7"))+
    scale_shape_manual(values = c(21, 22,23, 24, 25, 7))+
    
    labs(title="2004") +
    theme_bw()+
    theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank())+
    theme(axis.ticks.x = element_blank(),
          axis.text.x = element_blank()) +
    theme(axis.ticks.y = element_blank(),
          axis.text.y = element_blank()) +
    theme(axis.title.x = element_blank(),
          axis.title.y = element_blank())
}
p2004


###########################################################################
# 2005 --------------------------------------------------------------------
###########################################################################


# Upload data from excel
a.2005 <- read_excel(path = network.data, sheet = "2005authors")
n.2005 <- read_excel(path = network.data, sheet = "2005nodes")

# Select columns
df2005.a <- a.2005 %>% select(main, coauthor)

n.2005 <- n.2005[-c(8,9), ]
df2005.n <- n.2005 %>% select(abrev, country, affiliation)

## covert in a igraph
network2005 <- graph_from_data_frame(d=df2005.a, vertices=df2005.n, directed=TRUE)

# plot
{set.seed(14)
  p2005 <- ggraph(network2005,layout = "gem")+
    geom_edge_link0(edge_colour = "black")+
    geom_node_point(aes(fill = affiliation, shape=affiliation),size = 3,
                    show.legend = FALSE)+
    #  scale_edge_colour_brewer(palette = "Set1") +
    scale_fill_manual(values=c("Africa" = "#fc8d59","Asia" = "#ffff99",
                               "Europe" = "#7fc97f", "Latin America"="#4575b4",
                               'North America'= "#d73027", "Oceania"="#c994c7"))+
    scale_shape_manual(values = c(21, 22,23, 24, 25, 7))+
    
    labs(title="2005") +
    theme_bw()+
    theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank())+
    theme(axis.ticks.x = element_blank(),
          axis.text.x = element_blank()) +
    theme(axis.ticks.y = element_blank(),
          axis.text.y = element_blank()) +
    theme(axis.title.x = element_blank(),
          axis.title.y = element_blank())
}  

p2005




###########################################################################
###########################################################################
###########################################################################


network.data <- "data/data2006_2010.xlsx"
excel_sheets(path = network.data)


###########################################################################
# 2006 --------------------------------------------------------------------
###########################################################################


# Upload data from excel
a.2006 <- read_excel(path = network.data, sheet = "2006authors")
n.2006 <- read_excel(path = network.data, sheet = "2006nodes")

# Select columns
df2006.a <- a.2006 %>% select(main, coauthor)

df2006.n <- n.2006 %>% select(abrev, country, affiliation)

## covert in a igraph
network2006 <- graph_from_data_frame(d=df2006.a, vertices=df2006.n, directed=TRUE)

# plot
{set.seed(14)
  p2006 <- ggraph(network2006,layout = "gem")+
    geom_edge_link0(edge_colour = "black")+
    geom_node_point(aes(fill = affiliation, shape=affiliation),size = 3,
                    show.legend = FALSE)+
    #  scale_edge_colour_brewer(palette = "Set1") +
    scale_fill_manual(values=c("Africa" = "#fc8d59","Asia" = "#ffff99",
                               "Europe" = "#7fc97f", "Latin America"="#4575b4",
                               'North America'= "#d73027", "Oceania"="#c994c7"))+
    scale_shape_manual(values = c(21, 22,23, 24, 25, 7))+
    
    labs(title="2006") +
    theme_bw()+
    theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank())+
    theme(axis.ticks.x = element_blank(),
          axis.text.x = element_blank()) +
    theme(axis.ticks.y = element_blank(),
          axis.text.y = element_blank()) +
    theme(axis.title.x = element_blank(),
          axis.title.y = element_blank())
}  

p2006




###########################################################################
# 2007 --------------------------------------------------------------------
###########################################################################


# Upload data from excel
a.2007 <- read_excel(path = network.data, sheet = "2007authors")
n.2007 <- read_excel(path = network.data, sheet = "2007nodes")

# Select columns
df2007.a <- a.2007 %>% select(main, coauthor)

duplicated(n.2007$abrev) # Find duplicate
n.2007 <- n.2007[-c(5,6), ] # Remove duplicate
df2007.n <- n.2007 %>% select(abrev, country, affiliation)

## covert in a igraph
network2007 <- graph_from_data_frame(d=df2007.a, vertices=df2007.n, directed=TRUE)

# plot
{set.seed(14)
  p2007 <- ggraph(network2007,layout = "gem")+
    geom_edge_link0(edge_colour = "black")+
    geom_node_point(aes(fill = affiliation, shape=affiliation),size = 3,
                    show.legend = FALSE)+
    #  scale_edge_colour_brewer(palette = "Set1") +
    scale_fill_manual(values=c("Africa" = "#fc8d59","Asia" = "#ffff99",
                               "Europe" = "#7fc97f", "Latin America"="#4575b4",
                               'North America'= "#d73027", "Oceania"="#c994c7"))+
    scale_shape_manual(values = c(21, 22,23, 24, 25, 7))+
    
    labs(title="2007") +
    theme_bw()+
    theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank())+
    theme(axis.ticks.x = element_blank(),
          axis.text.x = element_blank()) +
    theme(axis.ticks.y = element_blank(),
          axis.text.y = element_blank()) +
    theme(axis.title.x = element_blank(),
          axis.title.y = element_blank())
}  

p2007



###########################################################################
# 2008 --------------------------------------------------------------------
###########################################################################


# Upload data from excel
a.2008 <- read_excel(path = network.data, sheet = "2008authors")
n.2008 <- read_excel(path = network.data, sheet = "2008nodes")

# Select columns
df2008.a <- a.2008 %>% select(main, coauthor)
df2008.n <- n.2008 %>% select(abrev, country, affiliation)

## covert in a igraph
network2008 <- graph_from_data_frame(d=df2008.a, vertices=df2008.n, directed=TRUE)

# plot
{set.seed(14)
  p2008 <- ggraph(network2008,layout = "gem")+
    geom_edge_link0(edge_colour = "black")+
    geom_node_point(aes(fill = affiliation, shape=affiliation),size = 3,
                    show.legend = FALSE)+
    #  scale_edge_colour_brewer(palette = "Set1") +
    scale_fill_manual(values=c("Africa" = "#fc8d59","Asia" = "#ffff99",
                               "Europe" = "#7fc97f", "Latin America"="#4575b4",
                               'North America'= "#d73027", "Oceania"="#c994c7"))+
    scale_shape_manual(values = c(21, 22,23, 24, 25, 7))+
    
    labs(title="2007") +
    theme_bw()+
    theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank())+
    theme(axis.ticks.x = element_blank(),
          axis.text.x = element_blank()) +
    theme(axis.ticks.y = element_blank(),
          axis.text.y = element_blank()) +
    theme(axis.title.x = element_blank(),
          axis.title.y = element_blank())
}  

p2008



###########################################################################
# 2009 --------------------------------------------------------------------
###########################################################################


# Upload data from excel
a.2009 <- read_excel(path = network.data, sheet = "2009authors")
n.2009 <- read_excel(path = network.data, sheet = "2009nodes")

# Select columns
df2009.a <- a.2009 %>% select(main, coauthor)

duplicated(n.2009$abrev) # Find duplicate
n.2009 <- n.2009[-c(26), ] # Remove duplicate
df2009.n <- n.2009 %>% select(abrev, country, affiliation)

## covert in a igraph
network2009 <- graph_from_data_frame(d=df2009.a, vertices=df2009.n, directed=TRUE)

# plot
{set.seed(14)
  p2009 <- ggraph(network2009,layout = "gem")+
    geom_edge_link0(edge_colour = "black")+
    geom_node_point(aes(fill = affiliation, shape=affiliation),size = 3,
                    show.legend = FALSE)+
    #  scale_edge_colour_brewer(palette = "Set1") +
    scale_fill_manual(values=c("Africa" = "#fc8d59","Asia" = "#ffff99",
                               "Europe" = "#7fc97f", "Latin America"="#4575b4",
                               'North America'= "#d73027", "Oceania"="#c994c7"))+
    scale_shape_manual(values = c(21, 22,23, 24, 25, 7))+
    
    labs(title="2009") +
    theme_bw()+
    theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank())+
    theme(axis.ticks.x = element_blank(),
          axis.text.x = element_blank()) +
    theme(axis.ticks.y = element_blank(),
          axis.text.y = element_blank()) +
    theme(axis.title.x = element_blank(),
          axis.title.y = element_blank())
}  

p2009




###########################################################################
# 2010 --------------------------------------------------------------------
###########################################################################


# Upload data from excel
a.2010 <- read_excel(path = network.data, sheet = "2010authors")
n.2010 <- read_excel(path = network.data, sheet = "2010nodes")

# Select columns
df2010.a <- a.2010 %>% select(main, coauthor)

duplicated(n.2010$abrev) # Find duplicate
n.2010 <- n.2010[-c(16:25,61,71,83), ] # Remove duplicate
df2010.n <- n.2010 %>% select(abrev, country, affiliation)

## covert in a igraph
network2010 <- graph_from_data_frame(d=df2010.a, vertices=df2010.n, directed=TRUE)

# plot
{set.seed(14)
  p2010 <- ggraph(network2010,layout = "gem")+
    geom_edge_link0(edge_colour = "black")+
    geom_node_point(aes(fill = affiliation, shape=affiliation),size = 3,
                    show.legend = FALSE)+
    #  scale_edge_colour_brewer(palette = "Set1") +
    scale_fill_manual(values=c("Africa" = "#fc8d59","Asia" = "#ffff99",
                               "Europe" = "#7fc97f", "Latin America"="#4575b4",
                               'North America'= "#d73027", "Oceania"="#c994c7"))+
    scale_shape_manual(values = c(21, 22,23, 24, 25, 7))+
    
    labs(title="2009") +
    theme_bw()+
    theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank())+
    theme(axis.ticks.x = element_blank(),
          axis.text.x = element_blank()) +
    theme(axis.ticks.y = element_blank(),
          axis.text.y = element_blank()) +
    theme(axis.title.x = element_blank(),
          axis.title.y = element_blank())
}  

p2010

###########################################################################
###########################################################################
###########################################################################


network.data <- "data/data2011_2015.xlsx"
excel_sheets(path = network.data)

###########################################################################
# 2011 --------------------------------------------------------------------
###########################################################################


# Upload data from excel
a.2011 <- read_excel(path = network.data, sheet = "2011authors")
n.2011 <- read_excel(path = network.data, sheet = "2011nodes")

# Select columns
df2011.a <- a.2011 %>% select(main, coauthor)

duplicated(n.2011$abrev) # Find duplicate
n.2011 <- n.2011[-c(52,53), ] # Remove duplicate
df2011.n <- n.2011 %>% select(abrev, country, affiliation)

## covert in a igraph
network2011 <- graph_from_data_frame(d=df2011.a, vertices=df2011.n, directed=TRUE)

# plot
{set.seed(14)
  p2011 <- ggraph(network2011,layout = "gem")+
    geom_edge_link0(edge_colour = "black")+
    geom_node_point(aes(fill = affiliation, shape=affiliation),size = 3,
                    show.legend = FALSE)+
    #  scale_edge_colour_brewer(palette = "Set1") +
    scale_fill_manual(values=c("Africa" = "#fc8d59","Asia" = "#ffff99",
                               "Europe" = "#7fc97f", "Latin America"="#4575b4",
                               'North America'= "#d73027", "Oceania"="#c994c7"))+
    scale_shape_manual(values = c(21, 22,23, 24, 25, 7))+
    
    labs(title="2012") +
    theme_bw()+
    theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank())+
    theme(axis.ticks.x = element_blank(),
          axis.text.x = element_blank()) +
    theme(axis.ticks.y = element_blank(),
          axis.text.y = element_blank()) +
    theme(axis.title.x = element_blank(),
          axis.title.y = element_blank())
}  

p2011


###########################################################################
# 2012 --------------------------------------------------------------------
###########################################################################

# Upload data from excel
a.2012 <- read_excel(path = network.data, sheet = "2012authors")
n.2012 <- read_excel(path = network.data, sheet = "2012nodes")

# Select columns
df2012.a <- a.2012 %>% select(main, coauthor)

duplicated(n.2012$abrev) # Find duplicate
n.2012 <- n.2012[-c(17,18,19,25,69,77,79), ] # Remove duplicate
df2012.n <- n.2012 %>% select(abrev, country, affiliation)

## covert in a igraph
network2012 <- graph_from_data_frame(d=df2012.a, vertices=df2012.n, directed=TRUE)

# plot
{set.seed(14)
  p2012 <- ggraph(network2012,layout = "gem")+
    geom_edge_link0(edge_colour = "black")+
    geom_node_point(aes(fill = affiliation, shape=affiliation),size = 3,
                    show.legend = FALSE)+
    #  scale_edge_colour_brewer(palette = "Set1") +
    scale_fill_manual(values=c("Africa" = "#fc8d59","Asia" = "#ffff99",
                               "Europe" = "#7fc97f", "Latin America"="#4575b4",
                               'North America'= "#d73027", "Oceania"="#c994c7"))+
    scale_shape_manual(values = c(21, 22,23, 24, 25, 7))+
    
    labs(title="2012") +
    theme_bw()+
    theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank())+
    theme(axis.ticks.x = element_blank(),
          axis.text.x = element_blank()) +
    theme(axis.ticks.y = element_blank(),
          axis.text.y = element_blank()) +
    theme(axis.title.x = element_blank(),
          axis.title.y = element_blank())
}  

p2012



###########################################################################
# 2013 --------------------------------------------------------------------
###########################################################################

# Upload data from excel
a.2013 <- read_excel(path = network.data, sheet = "2013authors")
n.2013 <- read_excel(path = network.data, sheet = "2013nodes")

# Select columns
df2013.a <- a.2013 %>% select(main, coauthor)

duplicated(n.2013$abrev) # Find duplicate
n.2013 <- n.2013[-c(29,30,31,32,34,36,39,65,67, # Remove duplicate
                    93,94,95,96,97,99,106,107), ]
df2013.n <- n.2013 %>% select(abrev, country, affiliation)

## covert in a igraph
network2013 <- graph_from_data_frame(d=df2013.a, vertices=df2013.n, directed=TRUE)

# plot
{set.seed(14)
  p2013 <- ggraph(network2013,layout = "gem")+
    geom_edge_link0(edge_colour = "black")+
    geom_node_point(aes(fill = affiliation, shape=affiliation),size = 3,
                    show.legend = FALSE)+
    #  scale_edge_colour_brewer(palette = "Set1") +
    scale_fill_manual(values=c("Africa" = "#fc8d59","Asia" = "#ffff99",
                               "Europe" = "#7fc97f", "Latin America"="#4575b4",
                               'North America'= "#d73027", "Oceania"="#c994c7"))+
    scale_shape_manual(values = c(21, 22,23, 24, 25, 7))+
    
    labs(title="2013") +
    theme_bw()+
    theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank())+
    theme(axis.ticks.x = element_blank(),
          axis.text.x = element_blank()) +
    theme(axis.ticks.y = element_blank(),
          axis.text.y = element_blank()) +
    theme(axis.title.x = element_blank(),
          axis.title.y = element_blank())
}  

p2013



###########################################################################
# 2014 --------------------------------------------------------------------
###########################################################################

# Upload data from excel
a.2014 <- read_excel(path = network.data, sheet = "2014authors")
n.2014 <- read_excel(path = network.data, sheet = "2014nodes")

# Select columns
df2014.a <- a.2014 %>% select(main, coauthor)

duplicated(n.2014$abrev) # Find duplicate
n.2014 <- n.2014[!duplicated(n.2014$abrev), ] # Remove duplicate automaticaly
df2014.n <- n.2014 %>% select(abrev, country, affiliation)

## covert in a igraph
network2014 <- graph_from_data_frame(d=df2014.a, vertices=df2014.n, directed=TRUE)

# plot
{set.seed(14)
  p2014 <- ggraph(network2014,layout = "gem")+
    geom_edge_link0(edge_colour = "black")+
    geom_node_point(aes(fill = affiliation, shape=affiliation),size = 3,
                    show.legend = FALSE)+
    #  scale_edge_colour_brewer(palette = "Set1") +
    scale_fill_manual(values=c("Africa" = "#fc8d59","Asia" = "#ffff99",
                               "Europe" = "#7fc97f", "Latin America"="#4575b4",
                               'North America'= "#d73027", "Oceania"="#c994c7"))+
    scale_shape_manual(values = c(21, 22,23, 24, 25, 7))+
    
    labs(title="2014") +
    theme_bw()+
    theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank())+
    theme(axis.ticks.x = element_blank(),
          axis.text.x = element_blank()) +
    theme(axis.ticks.y = element_blank(),
          axis.text.y = element_blank()) +
    theme(axis.title.x = element_blank(),
          axis.title.y = element_blank())
}  

p2014



###########################################################################
# 2015 --------------------------------------------------------------------
###########################################################################

# Upload data from excel
a.2015 <- read_excel(path = network.data, sheet = "2015authors")
n.2015 <- read_excel(path = network.data, sheet = "2015nodes")

# Select columns
df2015.a <- a.2015 %>% select(main, coauthor)

duplicated(n.2015$abrev) # Find duplicate
n.2015 <- n.2015[!duplicated(n.2015$abrev), ] # Remove duplicate automatically
df2015.n <- n.2015 %>% select(abrev, country, affiliation)

## covert in a igraph
network2015 <- graph_from_data_frame(d=df2015.a, vertices=df2015.n, directed=TRUE)

# plot
{set.seed(14)
  p2015 <- ggraph(network2015,layout = "gem")+
    geom_edge_link0(edge_colour = "black")+
    geom_node_point(aes(fill = affiliation, shape=affiliation),size = 3,
                    show.legend = FALSE)+
    #  scale_edge_colour_brewer(palette = "Set1") +
    scale_fill_manual(values=c("Africa" = "#fc8d59","Asia" = "#ffff99",
                               "Europe" = "#7fc97f", "Latin America"="#4575b4",
                               'North America'= "#d73027", "Oceania"="#c994c7"))+
    scale_shape_manual(values = c(21, 22,23, 24, 25, 7))+
    
    labs(title="2015") +
    theme_bw()+
    theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank())+
    theme(axis.ticks.x = element_blank(),
          axis.text.x = element_blank()) +
    theme(axis.ticks.y = element_blank(),
          axis.text.y = element_blank()) +
    theme(axis.title.x = element_blank(),
          axis.title.y = element_blank())
}  

p2015





network.data <- "data/data2016_2020.xlsx"
excel_sheets(path = network.data)


###########################################################################
# 2016 --------------------------------------------------------------------
###########################################################################


# Upload data from excel
a.2016 <- read_excel(path = network.data, sheet = "2016authors")
n.2016 <- read_excel(path = network.data, sheet = "2016nodes")

# Select columns
df2016.a <- a.2016 %>% select(main, coauthor)

duplicated(n.2016$abrev) # Find duplicate
n.2016 <- n.2016[!duplicated(n.2016$abrev), ] # Remove duplicate automatically
df2016.n <- n.2016 %>% select(abrev, country, affiliation)

## covert in a igraph
network2016 <- graph_from_data_frame(d=df2016.a, vertices=df2016.n, directed=TRUE)

# plot
{set.seed(14)
  p2016 <- ggraph(network2016,layout = "gem")+
    geom_edge_link0(edge_colour = "black")+
    geom_node_point(aes(fill = affiliation, shape=affiliation),size = 3,
                    show.legend = FALSE)+
    #  scale_edge_colour_brewer(palette = "Set1") +
    scale_fill_manual(values=c("Africa" = "#fc8d59","Asia" = "#ffff99",
                               "Europe" = "#7fc97f", "Latin America"="#4575b4",
                               'North America'= "#d73027", "Oceania"="#c994c7"))+
    scale_shape_manual(values = c(21, 22,23, 24, 25, 7))+
    
    labs(title="2012") +
    theme_bw()+
    theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank())+
    theme(axis.ticks.x = element_blank(),
          axis.text.x = element_blank()) +
    theme(axis.ticks.y = element_blank(),
          axis.text.y = element_blank()) +
    theme(axis.title.x = element_blank(),
          axis.title.y = element_blank())
}  

p2016




###########################################################################
# 2017 --------------------------------------------------------------------
###########################################################################


# Upload data from excel
a.2017 <- read_excel(path = network.data, sheet = "2017authors")
n.2017 <- read_excel(path = network.data, sheet = "2017nodes")

# Select columns
df2017.a <- a.2017 %>% select(main, coauthor)

duplicated(n.2017$abrev) # Find duplicate
n.2017 <- n.2017[!duplicated(n.2017$abrev), ] # Remove duplicate automatically
df2017.n <- n.2017 %>% select(abrev, country, affiliation)

## covert in a igraph
network2017 <- graph_from_data_frame(d=df2017.a, vertices=df2017.n, directed=TRUE)

# plot
{set.seed(14)
  p2017 <- ggraph(network2017,layout = "gem")+
    geom_edge_link0(edge_colour = "black")+
    geom_node_point(aes(fill = affiliation, shape=affiliation),size = 3,
                    show.legend = FALSE)+
    #  scale_edge_colour_brewer(palette = "Set1") +
    scale_fill_manual(values=c("Africa" = "#fc8d59","Asia" = "#ffff99",
                               "Europe" = "#7fc97f", "Latin America"="#4575b4",
                               'North America'= "#d73027", "Oceania"="#c994c7"))+
    scale_shape_manual(values = c(21, 22,23, 24, 25, 7))+
    
    labs(title="2017") +
    theme_bw()+
    theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank())+
    theme(axis.ticks.x = element_blank(),
          axis.text.x = element_blank()) +
    theme(axis.ticks.y = element_blank(),
          axis.text.y = element_blank()) +
    theme(axis.title.x = element_blank(),
          axis.title.y = element_blank())
}  

p2017



###########################################################################
# 2018 --------------------------------------------------------------------
###########################################################################


# Upload data from excel
a.2018 <- read_excel(path = network.data, sheet = "2018authors")
n.2018 <- read_excel(path = network.data, sheet = "2018nodes")

# Select columns
df2018.a <- a.2018 %>% select(main, coauthor)

duplicated(n.2018$abrev) # Find duplicate
n.2018 <- n.2018[!duplicated(n.2018$abrev), ] # Remove duplicate automatically
df2018.n <- n.2018 %>% select(abrev, country, affiliation)

## covert in a igraph
network2018 <- graph_from_data_frame(d=df2018.a, vertices=df2018.n, directed=FALSE)

# plot
{set.seed(14)
  p2018 <- ggraph(network2018,layout = "gem")+
    geom_edge_link0(edge_colour = "black")+
    geom_node_point(aes(fill = affiliation, shape=affiliation),size = 3,
                    show.legend = FALSE)+
    #  scale_edge_colour_brewer(palette = "Set1") +
    scale_fill_manual(values=c("Africa" = "#fc8d59","Asia" = "#ffff99",
                               "Europe" = "#7fc97f", "Latin America"="#4575b4",
                               'North America'= "#d73027", "Oceania"="#c994c7"))+
    scale_shape_manual(values = c(21, 22,23, 24, 25, 7))+
    
    labs(title="2018") +
    theme_bw()+
    theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank())+
    theme(axis.ticks.x = element_blank(),
          axis.text.x = element_blank()) +
    theme(axis.ticks.y = element_blank(),
          axis.text.y = element_blank()) +
    theme(axis.title.x = element_blank(),
          axis.title.y = element_blank())
}  

p2018



###########################################################################
# 2018 --------------------------------------------------------------------
###########################################################################


# Upload data from excel
a.2019 <- read_excel(path = network.data, sheet = "2019authors")
n.2019 <- read_excel(path = network.data, sheet = "2019nodes")

# Select columns
df2019.a <- a.2019 %>% select(main, coauthor)

duplicated(n.2019$abrev) # Find duplicate
n.2019 <- n.2019[!duplicated(n.2019$abrev), ] # Remove duplicate automatically
df2019.n <- n.2019 %>% select(abrev, country, affiliation)

## covert in a igraph
network2019 <- graph_from_data_frame(d=df2019.a, vertices=df2019.n, directed=FALSE)

# plot
{set.seed(14)
p2019 <- ggraph(network2019,layout = "gem")+
    geom_edge_link0(edge_colour = "black")+
    geom_node_point(aes(fill = affiliation, shape=affiliation),size = 3,
                    show.legend = FALSE)+
    #  scale_edge_colour_brewer(palette = "Set1") +
    scale_fill_manual(values=c("Africa" = "#fc8d59","Asia" = "#ffff99",
                               "Europe" = "#7fc97f", "Latin America"="#4575b4",
                               'North America'= "#d73027", "Oceania"="#c994c7"))+
    scale_shape_manual(values = c(21, 22,23, 24, 25, 7))+
    
    labs(title="2019") +
    theme_bw()+
    theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank())+
    theme(axis.ticks.x = element_blank(),
          axis.text.x = element_blank()) +
    theme(axis.ticks.y = element_blank(),
          axis.text.y = element_blank()) +
    theme(axis.title.x = element_blank(),
          axis.title.y = element_blank())
}  

p2019



###########################################################################
# 2018 --------------------------------------------------------------------
###########################################################################


# Upload data from excel
a.2020 <- read_excel(path = network.data, sheet = "2020authors")
n.2020 <- read_excel(path = network.data, sheet = "2020nodes")

# Select columns
df2020.a <- a.2020 %>% select(main, coauthor)

duplicated(n.2020$abrev) # Find duplicate
n.2020 <- n.2020[!duplicated(n.2020$abrev), ] # Remove duplicate automatically
df2020.n <- n.2020 %>% select(abrev, country, affiliation)

## covert in a igraph
network2020 <- graph_from_data_frame(d=df2020.a, vertices=df2020.n, directed=FALSE)

# plot
{set.seed(14)
p2020 <- ggraph(network2020,layout = "gem")+
    geom_edge_link0(edge_colour = "black")+
    geom_node_point(aes(fill = affiliation, shape=affiliation),size = 3,
                    show.legend = FALSE)+
    #  scale_edge_colour_brewer(palette = "Set1") +
    scale_fill_manual(values=c("Africa" = "#fc8d59","Asia" = "#ffff99",
                               "Europe" = "#7fc97f", "Latin America"="#4575b4",
                               'North America'= "#d73027", "Oceania"="#c994c7"))+
    scale_shape_manual(values = c(21, 22,23, 24, 25, 7))+
    
    labs(title="2020") +
    theme_bw()+
    theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank())+
    theme(axis.ticks.x = element_blank(),
          axis.text.x = element_blank()) +
    theme(axis.ticks.y = element_blank(),
          axis.text.y = element_blank()) +
    theme(axis.title.x = element_blank(),
          axis.title.y = element_blank())
}  

p2020

