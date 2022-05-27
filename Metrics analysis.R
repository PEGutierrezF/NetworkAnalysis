



# ---------------------------------------------
# Metrics analysis: Centrality, 
# 08 May 2022
# Pablo E. Gutiérrez-Fonseca
# pabloe.gutierrezfonseca@gmail.com
# ---------------------------------------------
#  



# cleans global environment
rm(list = ls())



# 2000 ---------------------------------------------------------
network2000 <- graph_from_data_frame(d=df2000a, vertices=df2000b, directed=T) # covert in a igraph
centr_degree(network2000, mode = "total")$centralization

assortativity_degree(network2000, directed=F)

# 2001 ---------------------------------------------------------
network2001 <- graph_from_data_frame(d=df2001.a, vertices=df2001.n, directed=TRUE)
centr_degree(network2001, mode = "total")$centralization

assortativity_degree(network2001, directed=F)


# 2002 ---------------------------------------------------------
network2002 <- graph_from_data_frame(d=df2002.a, vertices=df2002.n, directed=TRUE)
centr_degree(network2002, mode = "total")$centralization

assortativity_degree(network2002, directed=F)

# Centrality 2003 ---------------------------------------------------------
network2003 <- graph_from_data_frame(d=df2003.a, vertices=df2003.n, directed=TRUE)
centr_degree(network2003, mode = "total")$centralization

assortativity_degree(network2003, directed=F)

# Centrality 2004 ---------------------------------------------------------
network2004 <- graph_from_data_frame(d=df2004.a, vertices=df2004.n, directed=TRUE)
centr_degree(network2004, mode = "total")$centralization

assortativity_degree(network2004, directed=F)

# Centrality 2005 ---------------------------------------------------------
network2005 <- graph_from_data_frame(d=df2005.a, vertices=df2005.n, directed=TRUE)
centr_degree(network2005, mode = "total")$centralization

assortativity_degree(network2005, directed=T)


# Centrality 2006 ---------------------------------------------------------
network2006 <- graph_from_data_frame(d=df2006.a, vertices=df2006.n, directed=TRUE)
centr_degree(network2006, mode = "total")$centralization

assortativity_degree(network2006, directed=T)


# Centrality 2007 ---------------------------------------------------------
network2007 <- graph_from_data_frame(d=df2007.a, vertices=df2007.n, directed=TRUE)
centr_degree(network2007, mode = "total")$centralization

assortativity_degree(network2007, directed=T)

# Centrality 2008 ---------------------------------------------------------
network2008 <- graph_from_data_frame(d=df2008.a, vertices=df2008.n, directed=TRUE)
centr_degree(network2008, mode = "total")$centralization

assortativity_degree(network2008, directed=T)


# Centrality 2009 ---------------------------------------------------------
network2009 <- graph_from_data_frame(d=df2009.a, vertices=df2009.n, directed=TRUE)
centr_degree(network2009, mode = "total")$centralization

assortativity_degree(network2009, directed=T)


# Centrality 2010 ---------------------------------------------------------
network2010 <- graph_from_data_frame(d=df2010.a, vertices=df2010.n, directed=TRUE)
centr_degree(network2010, mode = "total")$centralization

assortativity_degree(network2010, directed=T)


# Centrality 2011 ---------------------------------------------------------
network2011 <- graph_from_data_frame(d=df2011.a, vertices=df2011.n, directed=TRUE)
centr_degree(network2011, mode = "total")$centralization

assortativity_degree(network2011, directed=T)


# Centrality 2012 ---------------------------------------------------------
network2012 <- graph_from_data_frame(d=df2012.a, vertices=df2012.n, directed=TRUE)
centr_degree(network2012, mode = "total")$centralization

assortativity_degree(network2012, directed=T)


# Centrality 2013 ---------------------------------------------------------
network2013 <- graph_from_data_frame(d=df2013.a, vertices=df2013.n, directed=TRUE)
centr_degree(network2013, mode = "total")$centralization

assortativity_degree(network2013, directed=T)


# Centrality 2014 ---------------------------------------------------------
network2014 <- graph_from_data_frame(d=df2014.a, vertices=df2014.n, directed=TRUE)
centr_degree(network2014, mode = "total")$centralization

assortativity_degree(network2014, directed=T)



# Centrality 2020 ---------------------------------------------------------
network2020 <- graph_from_data_frame(d=df2020a, vertices=df2020b, directed=T) # covert in a igraph
centr_degree(network2020, mode = "total")$centralization

