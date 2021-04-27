



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

# MC, LJ, AR 20, LJ 29

df2020<- read.csv("autor2020.csv")
df2020a <- df2020 %>% select(V1, V2)
df2020a

df2020nodes<- read.csv("autor2020nodes.csv")
df2020b <- df2020nodes %>% select(Authors, Country)
df2020b

network2020 <- graph_from_data_frame(d=df2020a, vertices=df2020b, directed=F) # covert in a igraph

plot(network2020)

plot(network2020, edge.arrow.size=.2, edge.color="black", #line color
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



