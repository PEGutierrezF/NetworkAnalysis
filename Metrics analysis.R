



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



# Centrality 2020 ---------------------------------------------------------

network2020 <- graph_from_data_frame(d=df2020a, vertices=df2020b, directed=T) # covert in a igraph
centr_degree(network2020, mode = "total")$centralization

