



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
el=as.matrix(df2000) # coerces the data into a two-column matrix format that igraph likes
el[,1]=as.character(el[,1])
el[,2]=as.character(el[,2])
nw2000=graph.edgelist(el,directed=FALSE) # turns the edgelist into a 'graph object'
plot(nw2000)

E(nw2000)
V(nw2000)
nw2000[]

centr_degree(nw2000)$centralization
graph.density(nw2000)


###########################################################################
# 2015 --------------------------------------------------------------------
###########################################################################



df2015<- read.csv("autor2015.csv")
df2015a <- df2015 %>% select(V1, V2)

df2015nodes<- read.csv("autor2015nodes.csv")


network2015 <- graph_from_data_frame(d=df2015a, vertices=df2015nodes, directed=F) # covert in a igraph

plot(network2015)

plot(network2015, edge.arrow.size=.2, edge.color="black", #line color
     vertex.color="lightblue", vertex.frame.color="lightblue", # bubble color
     vertex.label=V(network2015)$media, vertex.label.color="black") # letters




# By country --------------------------------------------------------------

# Make a palette of 3 colors
library(RColorBrewer)
coul  <- brewer.pal(9, "Set1") 

# Create a vector of color
my_color <- coul[as.numeric(as.factor(V(network2015)$Country))]

# Make the plot
plot(network2015, vertex.color=my_color,
     vertex.label=NA, # Letters
     vertex.shape="circle", #shape
     edge.color="black")  # line color

legend(x=-1.9, y=0.5, legend=levels(as.factor(V(network2015)$Country)), 
       col = coul , bty = "n", pch=16, pt.cex = 1, cex = 1, text.col=, 
       horiz = F, inset = c(0.05, 0.05),
       title = "Country")



centr_degree(network2015)$centralization
graph.density(network2015)



#The degree distribution can be visualised with the hist() function.
hist(degree(nw2000), col="firebrick", xlab="Vertex Degree", 
     ylab="Frequency", main="")



