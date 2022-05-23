



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

network2000 <- graph_from_data_frame(d=df2000a, vertices=df2000b, directed=T) # covert in a igraph

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


network.data <- "data/data2011_2015.xlsx"
excel_sheets(path = network.data)


###########################################################################
# 2012 --------------------------------------------------------------------
###########################################################################


# Upload data from excel
a.2012 <- read_excel(path = network.data, sheet = "2012authors")
n.2012 <- read_excel(path = network.data, sheet = "2012nodes")

# Select columns
df2012.a <- a.2012 %>% select(main, coauthor)

duplicated(n.2012$abrev)
n.2012 <- n.2012[-c(17,18,19,25,69,77,79), ]
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

duplicated(n.2013$abrev)
n.2013 <- n.2013[-c(29,30,31,32,34,36,39,65,67,
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
# 2019 --------------------------------------------------------------------
###########################################################################

#KDS 3, MC 21 29 40 57, RMH 29, FOR 34, 38,  PEGF 36, RRCS 40, JDGT 44,
# JCDR 44, SS 44, RSR 45, AOM 45, KDS 49, LJ 49 50, AR 52, RMH 57, DRM 57

df2019<- read.csv("author2019.csv")
df2019a <- df2019 %>% select(main, coauthor)
df2019a

df2019nodes<- read.csv("author2019nodes.csv")
df2019b <- df2019nodes %>% select(Authors, Country, Affiliation)
df2019b

network2019 <- graph_from_data_frame(df2019a, vertices=df2019b, directed=F) # covert in a igraph
network2019[]


#http://mr.schochastics.net/netVizR.html
p2019 <- ggraph(network2019,"stress", bbox = 15)+
  geom_edge_link0(edge_colour = "black")+
  geom_node_point(aes(fill = Affiliation),shape = 21,size = 1,
                  show.legend = FALSE)+
  scale_fill_manual(values=c("Africa" = "#fc8d59","Asia" = "#ffff99",
                             "Europe" = "#7fc97f", "Latin America"="#4575b4",
                             'North America'= "#d73027", "Oceania"="#c994c7"))+
  labs(title="2019") +
  theme_bw()+
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank())+
  theme(axis.ticks.x = element_blank(),
        axis.text.x = element_blank()) +
  theme(axis.ticks.y = element_blank(),
        axis.text.y = element_blank()) +
  theme(axis.title.x = element_blank(),
        axis.title.y = element_blank())
p2019        



c_2019 <- graph_from_data_frame(df2019a)
centr_degree(c_2019)$centralization
graph.density(c_2019)


###########################################################################
# 2020 --------------------------------------------------------------------
###########################################################################

# MC 64, AR 20, LJ 29-39, LFL 34, VCP 36, DJ 40 57, ED 44, TS 45 53, JH 45 49, VSS 45, DKP 53
# VCP 57, RE 57, PA 57, SCF 57, OD 57, RC 61, CL 61, JFC 61, MSL 64, CETT 71
# FOR 72, SFBF 72

df2020<- read.csv("author2020.csv")
df2020a <- df2020 %>% select(main, coauthor)
df2020a

df2020nodes<- read.csv("author2020nodes.csv")
df2020b <- df2020nodes %>% select(Authors, Country, Affiliation)
df2020b

network2020 <- graph_from_data_frame(df2020a, vertices=df2020b, directed=TRUE) # covert in a igraph
network2020[]

df <- as.undirected(network2020, mode = "collapse")

#http://mr.schochastics.net/netVizR.html
{set.seed(14)
p2020 <- ggraph(network2020,"stress", bbox = 15)+
        geom_edge_link0(edge_colour = "black")+
        geom_node_point(aes(fill = Affiliation, shape= Affiliation), size = 5,
                        show.legend = FALSE)+                         #Para poner la leyenda
        scale_fill_manual(values=c("Africa" = "#fc8d59","Asia" = "#ffff99",
                                   "Europe" = "#7fc97f", "Latin America"="#4575b4",
                                   'North America'= "#d73027", "Oceania"="#c994c7"))+
  scale_shape_manual(values = c(21, 22, 23, 24, 25, 10))+ #22 Asia, 24 LA
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


Figure + ggsave("Figure 1.jpeg",width = 210, height = 297, units = "mm")





