



# ---------------------------------------------
# Metrics analysis: Centrality
# 08 May 2022
# Pablo E. Gutiérrez-Fonseca
# pabloe.gutierrezfonseca@gmail.com
# ---------------------------------------------
#  



# cleans global environment
rm(list = ls())



# Centrality 2000 ---------------------------------------------------------
network2000 <- graph_from_data_frame(d=df2000a, vertices=df2000b, directed=T) # covert in a igraph
centr_degree(network2000, mode = "total")$centralization


# Centrality 2001 ---------------------------------------------------------
network2001 <- graph_from_data_frame(d=df2001.a, vertices=df2001.n, directed=TRUE)
centr_degree(network2001, mode = "total")$centralization


# Centrality 2002 ---------------------------------------------------------
network2002 <- graph_from_data_frame(d=df2002.a, vertices=df2002.n, directed=TRUE)
centr_degree(network2002, mode = "total")$centralization


# Centrality 2003 ---------------------------------------------------------
network2003 <- graph_from_data_frame(d=df2003.a, vertices=df2003.n, directed=TRUE)
centr_degree(network2003, mode = "total")$centralization


# Centrality 2004 ---------------------------------------------------------
network2004 <- graph_from_data_frame(d=df2004.a, vertices=df2004.n, directed=TRUE)
centr_degree(network2004, mode = "total")$centralization


# Centrality 2005 ---------------------------------------------------------
network2005 <- graph_from_data_frame(d=df2005.a, vertices=df2005.n, directed=TRUE)
centr_degree(network2005, mode = "total")$centralization


# Centrality 2020 ---------------------------------------------------------
network2020 <- graph_from_data_frame(d=df2020a, vertices=df2020b, directed=T) # covert in a igraph
centr_degree(network2020, mode = "total")$centralization

