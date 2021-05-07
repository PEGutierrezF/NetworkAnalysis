



#https://www.r-graph-gallery.com/248-igraph-plotting-parameters.html
# https://kateto.net/wp-content/uploads/2016/06/Polnet%202016%20R%20Network%20Visualization%20Workshop.pdf
# https://www.r-graph-gallery.com/249-igraph-network-map-a-color.html

install.packages("ggraph")
library(igraph)
library(dplyr)
library(ggraph)

rm(list=ls())
source_file = read.csv(file.choose(), sep = ";", header = F)



df2000<- read.csv("autor2000.csv")
df2000nodes<- read.csv("autor2000nodes.csv")

network2000 <- graph_from_data_frame(d=df2000, vertices=df2000nodes, directed=F) # covert in a igraph

plot(network2000)

plot(network2000, edge.arrow.size=.2, edge.color="black", #line color
     vertex.color="lightblue", vertex.frame.color="lightblue", # bubble color
     vertex.label=V(network2000)$media, vertex.label.color="black") # letters


E(network2000)
V(network2000)
network2000[]

centr_degree(network2000)$centralization
graph.density(network2000)


###########################################################################
# 2020 --------------------------------------------------------------------
###########################################################################

# MC, AR 20, LJ 29-39, LFL 34, VCP 36, DJ 40, ED 44, TS 45 53, JH 45 49, VSS 45, DKP 53

df2020<- read.csv("autor2020.csv")
df2020a <- df2020 %>% select(V1, V2)
df2020a

df2020nodes<- read.csv("autor2020nodes.csv")
df2020b <- df2020nodes %>% select(Authors, Country)
df2020b

network2020 <- graph_from_data_frame(df2020a, vertices=df2020b, directed=F) # covert in a igraph
network2020[]
plot.igraph(network2020)





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
library(RColorBrewer)
coul  <- brewer.pal(9, "Set1") 

# Create a vector of color
my_color <- coul[as.numeric(as.factor(V(network2020)$Country))]

# Make the plot
plot(network2020, vertex.color=my_color,
     vertex.label=NA, # Letters
     vertex.shape="circle", #shape
     edge.color="black")  # line color

legend(x=-1.9, y=0.5, legend=levels(as.factor(V(network2020)$Country)), 
       col = coul , bty = "n", pch=16, pt.cex = 1, cex = 1, text.col=, 
       horiz = F, inset = c(0.05, 0.05),
       title = "Country")



centr_degree(network2015)$centralization
graph.density(network2015)



#The degree distribution can be visualised with the hist() function.
hist(degree(nw2000), col="firebrick", xlab="Vertex Degree", 
     ylab="Frequency", main="")



