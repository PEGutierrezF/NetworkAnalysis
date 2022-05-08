



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


network.data <- "data/data.xlsx"
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

df2001<- read.csv("author2001.csv")
df2001a <- df2001 %>% select(main, coauthor)
df2001a

df2001nodes<- read.csv("author2001nodes.csv")
df2001b <- df2001nodes %>% select(Authors, Country, Affiliation)
df2001b

network2001 <- graph_from_data_frame(d=df2001, vertices=df2001nodes, directed=F) # covert in a igraph

p2001 <- ggraph(network2001,layout = "gem")+
  geom_edge_link0(edge_colour = "black")+
  geom_node_point(aes(fill = Affiliation),shape = 21,size = 1,
                  show.legend = FALSE)+
  #  scale_edge_colour_brewer(palette = "Set1") +
  scale_fill_manual(values=c("Africa" = "#fc8d59","Asia" = "#ffff99",
                             "Europe" = "#7fc97f", "Latin America"="#4575b4",
                             'North America'= "#d73027", "Oceania"="#c994c7"))+
  labs(title="2001") +
  theme_bw()+
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank())+
  theme(axis.ticks.x = element_blank(),
        axis.text.x = element_blank()) +
  theme(axis.ticks.y = element_blank(),
        axis.text.y = element_blank()) +
  theme(axis.title.x = element_blank(),
        axis.title.y = element_blank())

p2001

c_2001 <- graph_from_data_frame(df2001a)
centr_degree(c_2001)$centralization
graph.density(c_2001)




###########################################################################
# 2002 --------------------------------------------------------------------
###########################################################################

df2002<- read.csv("author2002.csv")
df2002a <- df2002 %>% select(main, coauthor)
df2002a

df2002nodes<- read.csv("author2002nodes.csv")
df2002b <- df2002nodes %>% select(Authors, Country, Affiliation)
df2002b

network2002 <- graph_from_data_frame(d=df2002, vertices=df2002nodes, directed=F) # covert in a igraph

p2002 <- ggraph(network2002,layout = "gem")+
  geom_edge_link0(edge_colour = "black")+
  geom_node_point(aes(fill = Affiliation),shape = 21,size = 1,
                  show.legend = FALSE)+
  #  scale_edge_colour_brewer(palette = "Set1") +
  scale_fill_manual(values=c("Africa" = "#fc8d59","Asia" = "#ffff99",
                             "Europe" = "#7fc97f", "Latin America"="#4575b4",
                             'North America'= "#d73027", "Oceania"="#c994c7"))+
  labs(title="2002") +
  theme_bw()+
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank())+
  theme(axis.ticks.x = element_blank(),
        axis.text.x = element_blank()) +
  theme(axis.ticks.y = element_blank(),
        axis.text.y = element_blank()) +
  theme(axis.title.x = element_blank(),
        axis.title.y = element_blank())

p2002


c_2002 <- graph_from_data_frame(df2002a)
centr_degree(c_2002)$centralization
graph.density(c_2002)


###########################################################################
# 2003 --------------------------------------------------------------------
###########################################################################

df2003<- read.csv("author2003.csv")
df2003a <- df2003 %>% select(main, coauthor)
df2003a

df2003nodes<- read.csv("author2003nodes.csv")
df2003b <- df2003nodes %>% select(Authors, Country, Affiliation)
df2003b

network2003 <- graph_from_data_frame(d=df2003, vertices=df2003nodes, directed=F) # covert in a igraph

p2003 <- ggraph(network2003,layout = "gem")+
  geom_edge_link0(edge_colour = "black")+
  geom_node_point(aes(fill = Affiliation),shape = 21,size = 1,
                  show.legend = FALSE)+
  #  scale_edge_colour_brewer(palette = "Set1") +
  scale_fill_manual(values=c("Africa" = "#fc8d59","Asia" = "#ffff99",
                             "Europe" = "#7fc97f", "Latin America"="#4575b4",
                             'North America'= "#d73027", "Oceania"="#c994c7"))+
  labs(title="2003") +
  theme_bw()+
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank())+
  theme(axis.ticks.x = element_blank(),
        axis.text.x = element_blank()) +
  theme(axis.ticks.y = element_blank(),
        axis.text.y = element_blank()) +
  theme(axis.title.x = element_blank(),
        axis.title.y = element_blank())

p2003


c_2003 <- graph_from_data_frame(df2003a)
centr_degree(c_2003)$centralization
graph.density(c_2003)



###########################################################################
# 2004 --------------------------------------------------------------------
###########################################################################

df2004<- read.csv("author2004.csv")
df2004a <- df2004 %>% select(main, coauthor)
df2004a

df2004nodes<- read.csv("author2004nodes.csv")
df2004b <- df2004nodes %>% select(Authors, Country, Affiliation)
df2004b

network2004 <- graph_from_data_frame(d=df2004, vertices=df2004nodes, directed=F) # covert in a igraph

p2004 <- ggraph(network2004,layout = "gem")+
  geom_edge_link0(edge_colour = "black")+
  geom_node_point(aes(fill = Affiliation),shape = 21,size = 1,
                  show.legend = FALSE)+
  #  scale_edge_colour_brewer(palette = "Set1") +
  scale_fill_manual(values=c("Africa" = "#fc8d59","Asia" = "#ffff99",
                             "Europe" = "#7fc97f", "Latin America"="#4575b4",
                             'North America'= "#d73027", "Oceania"="#c994c7"))+
  labs(title="2004") +
  theme_bw()+
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank())+
  theme(axis.ticks.x = element_blank(),
        axis.text.x = element_blank()) +
  theme(axis.ticks.y = element_blank(),
        axis.text.y = element_blank()) +
  theme(axis.title.x = element_blank(),
        axis.title.y = element_blank())

p2004


c_2004 <- graph_from_data_frame(df2004a)
centr_degree(c_2004)$centralization
graph.density(c_2004)



###########################################################################
# 2005 --------------------------------------------------------------------
###########################################################################

df2005<- read.csv("author2005.csv")
df2005a <- df2005 %>% select(main, coauthor)
df2005a

df2005nodes<- read.csv("author2005nodes.csv")
df2005b <- df2005nodes %>% select(Authors, Country, Affiliation)
df2005b

network2005 <- graph_from_data_frame(d=df2005, vertices=df2005nodes, directed=F) # covert in a igraph

p2005 <- ggraph(network2005,layout = "gem")+
  geom_edge_link0(edge_colour = "black")+
  geom_node_point(aes(fill = Affiliation),shape = 21,size = 1,
                  show.legend = FALSE)+
  #  scale_edge_colour_brewer(palette = "Set1") +
  scale_fill_manual(values=c("Africa" = "#fc8d59","Asia" = "#ffff99",
                             "Europe" = "#7fc97f", "Latin America"="#4575b4",
                             'North America'= "#d73027", "Oceania"="#c994c7"))+
  labs(title="2005") +
  theme_bw()+
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank())+
  theme(axis.ticks.x = element_blank(),
        axis.text.x = element_blank()) +
  theme(axis.ticks.y = element_blank(),
        axis.text.y = element_blank()) +
  theme(axis.title.x = element_blank(),
        axis.title.y = element_blank())

p2005


c_2005 <- graph_from_data_frame(df2005a)
centr_degree(c_2005)$centralization
graph.density(c_2005)

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





