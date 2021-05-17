






install.packages("intergraph")
library(igraph)
library(dplyr)
library(ggraph)
library(ggnetwork)
library(ITNr)
library(intergraph)
library(patchwork)

#rm(list=ls())
#source_file = read.csv(file.choose(), sep = ";", header = F)



df2000<- read.csv("author2000.csv")
df2000a <- df2000 %>% select(main, coauthor)
df2000a

df2000nodes<- read.csv("author2000nodes.csv")
df2000b <- df2000nodes %>% select(Authors, Country, Affiliation)
df2000b

network2000 <- graph_from_data_frame(d=df2000, vertices=df2000nodes, directed=F) # covert in a igraph

p1 <- ggraph(network2000,layout = "gem")+
        geom_edge_link0(edge_colour = "black")+
        geom_node_point(aes(fill = Affiliation),shape = 21,size = 5,
                        show.legend = FALSE)+
        #  scale_edge_colour_brewer(palette = "Set1") +
        scale_fill_manual(values=c("Africa" = "#fc8d59","Asia" = "#ffff99",
                                   "Europe" = "#7fc97f", "Latin America"="#4575b4",
                                   'North America'= "#d73027", "Oceania"="#c994c7"))+
        labs(title="Collaborations in papers from 2000") +
        theme_bw()+
        theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank())+
        theme(axis.ticks.x = element_blank(),
              axis.text.x = element_blank()) +
        theme(axis.ticks.y = element_blank(),
              axis.text.y = element_blank()) +
        theme(axis.title.x = element_blank(),
              axis.title.y = element_blank())

p1

c_2000 <- graph_from_data_frame(df2000a)
centr_degree(c_2000)$centralization
graph.density(c_2000)


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

p2 <- ggraph(network2001,layout = "gem")+
  geom_edge_link0(edge_colour = "black")+
  geom_node_point(aes(fill = Affiliation),shape = 21,size = 5,
                  show.legend = FALSE)+
  #  scale_edge_colour_brewer(palette = "Set1") +
  scale_fill_manual(values=c("Africa" = "#fc8d59","Asia" = "#ffff99",
                             "Europe" = "#7fc97f", "Latin America"="#4575b4",
                             'North America'= "#d73027", "Oceania"="#c994c7"))+
  labs(title="Collaborations in papers from 2001") +
  theme_bw()+
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank())+
  theme(axis.ticks.x = element_blank(),
        axis.text.x = element_blank()) +
  theme(axis.ticks.y = element_blank(),
        axis.text.y = element_blank()) +
  theme(axis.title.x = element_blank(),
        axis.title.y = element_blank())

p2

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

p3 <- ggraph(network2002,layout = "gem")+
  geom_edge_link0(edge_colour = "black")+
  geom_node_point(aes(fill = Affiliation),shape = 21,size = 5,
                  show.legend = FALSE)+
  #  scale_edge_colour_brewer(palette = "Set1") +
  scale_fill_manual(values=c("Africa" = "#fc8d59","Asia" = "#ffff99",
                             "Europe" = "#7fc97f", "Latin America"="#4575b4",
                             'North America'= "#d73027", "Oceania"="#c994c7"))+
  labs(title="Collaborations in papers from 2002") +
  theme_bw()+
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank())+
  theme(axis.ticks.x = element_blank(),
        axis.text.x = element_blank()) +
  theme(axis.ticks.y = element_blank(),
        axis.text.y = element_blank()) +
  theme(axis.title.x = element_blank(),
        axis.title.y = element_blank())

p3


c_2002 <- graph_from_data_frame(df2002a)
centr_degree(c_2002)$centralization
graph.density(c_2002)


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
p4 <- ggraph(network2019,"stress", bbox = 15)+
  geom_edge_link0(edge_colour = "black")+
  geom_node_point(aes(fill = Affiliation),shape = 21,size = 5,
                  show.legend = FALSE)+
  scale_fill_manual(values=c("Africa" = "#fc8d59","Asia" = "#ffff99",
                             "Europe" = "#7fc97f", "Latin America"="#4575b4",
                             'North America'= "#d73027", "Oceania"="#c994c7"))+
  labs(title="Collaborations in papers from 2019") +
  theme_bw()+
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank())+
  theme(axis.ticks.x = element_blank(),
        axis.text.x = element_blank()) +
  theme(axis.ticks.y = element_blank(),
        axis.text.y = element_blank()) +
  theme(axis.title.x = element_blank(),
        axis.title.y = element_blank())
p4        

p1 + p4

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

network2020 <- graph_from_data_frame(df2020a, vertices=df2020b, directed=F) # covert in a igraph
network2020[]


#http://mr.schochastics.net/netVizR.html
p5 <- ggraph(network2020,"stress", bbox = 15)+
        geom_edge_link0(edge_colour = "black")+
        geom_node_point(aes(fill = Affiliation),shape = 21,size = 5)+
        scale_fill_manual(values=c("Africa" = "#fc8d59","Asia" = "#ffff99",
                                   "Europe" = "#7fc97f", "Latin America"="#4575b4",
                                   'North America'= "#d73027", "Oceania"="#c994c7"))+
        labs(title="Collaborations in papers from 2020") +
        theme_bw()+
        theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank())+
        theme(axis.ticks.x = element_blank(),
              axis.text.x = element_blank()) +
        theme(axis.ticks.y = element_blank(),
              axis.text.y = element_blank()) +
        theme(axis.title.x = element_blank(),
              axis.title.y = element_blank())
p5        
        
p4 + p5

graph <- graph_from_data_frame(df2020a)
centr_degree(graph)$centralization



colfunc <- colorRampPalette(c("#00008B", "#63B8FF"))
cols <- colfunc(286)

ggraph(graph)+
        geom_edge_fan(aes(color = from)) +
        scale_edge_colour_gradient(low = "#00008B", high = "#63B8FF") + 
        geom_node_point(color = cols, show.legend = F, size = 3)


ggraph(graph) + 
        geom_edge_fan(alpha=0.5) + 
        geom_node_point(
                aes(color=cols,size=2),
                show.legend = FALSE)+
        theme_graph()




ceb <- cluster_edge_betweenness(network2020) 

dendPlot(ceb, mode="hclust")
plot(ceb, network2020,
     vertex.label=NA) 




lay <- layout_with_drl(network2020, options=list(simmer.attraction=0))

plot(network2020, layout = lay,
     vertex.size = 2, vertex.label.cex = 0.9,
     vertex.label.color = 'black', vertex.label.family = 'arial',
     vertex.label.dist = 0.2, vertex.frame.color = 'white',
     edge.arrow.size = 0.2, edge.curved = TRUE)




ggraph(network2020, 'igraph', algorithm = 'tree') + 
        geom_edge_link() +
        ggforce::theme_no_axes()

ggraph(network2020, 'igraph', algorithm = 'tree', circular = TRUE) + 
        geom_edge_diagonal(aes(alpha = ..index..)) +
        coord_fixed() + 
        scale_edge_alpha('Direction', guide = 'edge_direction') +
        geom_node_point(aes(filter = degree(network2020, mode = 'out') == 0), 
                        color = 'steelblue', size = 1) +
        ggforce::theme_no_axes()

ggraph(network2020, 'igraph', algorithm = 'tree') + 
        geom_edge_link() + 
        geom_node_point()


plot.igraph(network2020, edge.arrow.size=.5, edge.color="black", #line color
     vertex.color="lightblue", vertex.frame.color="lightblue", # bubble color
     vertex.label=V(network2020)$media, vertex.label.color="black") # letters


centr_degree(network2020)$centralization
graph.density(network2020)


# By country --------------------------------------------------------------

# Make a palette of 3 colors
colfunc <- colorRampPalette(c("#00008B", "#63B8FF"))
cols <- colfunc(25) 

# Create a vector of color
my_color <- cols[as.numeric(as.factor(V(network2020)$Country))]

# Make the plot
plot(network2020, vertex.color=my_color,
     vertex.label=NA, # Letters
     vertex.shape="circle", #shape
     edge.color="black")  # line color

legend(x=-1.9, y=1.5, legend=levels(as.factor(V(network2020)$Country)), 
       col = cols , bty = "n", pch=16, pt.cex = 1, cex = 1, text.col=, 
       horiz = F, inset = c(0.05, 0.05),
       title = "Country")



centr_degree(network2015)$centralization
graph.density(network2015)



#The degree distribution can be visualised with the hist() function.
hist(degree(nw2000), col="firebrick", xlab="Vertex Degree", 
     ylab="Frequency", main="")



