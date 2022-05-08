


network2000 <- graph_from_data_frame(d=df2000a, vertices=df2000b, directed=T) # covert in a igraph
centr_degree(network2000, mode = "total")$centralization

c_2000 <- graph_from_data_frame(df2000a)
centr_degree(c_2000, mode = "total")$centralization
graph.density(c_2000)
