



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
network2000 <- graph_from_data_frame(d=df2000a, vertices=df2000b, directed=FALSE) # covert in a igraph
centr_degree(network2000, mode = "total")$centralization

c.2000 <-  degree(network2000, v = V(network2000), mode = c("all"))
c.2000 ## node degree of all nodes in the network 

edge_density(network2000, loops=FALSE)

assortativity_nominal(network2000, as.factor(V(network2000)$affiliation)) # by continent
assortativity_nominal(network2000, as.factor(V(network2000)$country)) # by country


# 2001 ---------------------------------------------------------
network2001 <- graph_from_data_frame(d=df2001.a, vertices=df2001.n, directed=FALSE)
centr_degree(network2001, mode = "total")$centralization

#degree(network2001, v = V(network2001), mode = c("all"))

edge_density(network2001, loops=FALSE)

assortativity_nominal(network2001, as.factor(V(network2001)$affiliation)) # by continent
assortativity_nominal(network2001, as.factor(V(network2001)$country)) # by country



# 2002 ---------------------------------------------------------
network2002 <- graph_from_data_frame(d=df2002.a, vertices=df2002.n, directed=FALSE)
centr_degree(network2002, mode = "total")$centralization

# degree(network2002, v = V(network2002), mode = c("all"))

edge_density(network2002, loops=FALSE)

assortativity_nominal(network2002, as.factor(V(network2002)$affiliation))# by continent
assortativity_nominal(network2002, as.factor(V(network2002)$country)) # by country


# Centrality 2003 ---------------------------------------------------------
network2003 <- graph_from_data_frame(d=df2003.a, vertices=df2003.n, directed=FALSE)
centr_degree(network2003, mode = "total")$centralization

# degree(network2003, v = V(network2003), mode = c("all"))

edge_density(network2003, loops=FALSE)

assortativity_nominal(network2003, as.factor(V(network2003)$affiliation))# by continent
assortativity_nominal(network2003, as.factor(V(network2003)$country)) # by country


# Centrality 2004 ---------------------------------------------------------
network2004 <- graph_from_data_frame(d=df2004.a, vertices=df2004.n, directed=FALSE)
centr_degree(network2004, mode = "total")$centralization

# degree(network2004, v = V(network2004), mode = c("all"))

edge_density(network2004, loops=FALSE)

assortativity_nominal(network2004, as.factor(V(network2004)$affiliation)) # by continent
assortativity_nominal(network2004, as.factor(V(network2004)$country)) # by country


# Centrality 2005 ---------------------------------------------------------
network2005 <- graph_from_data_frame(d=df2005.a, vertices=df2005.n, directed=FALSE)
centr_degree(network2005, mode = "total")$centralization

# degree(network2005, v = V(network2005), mode = c("all"))

edge_density(network2005, loops=FALSE)

assortativity_nominal(network2005, as.factor(V(network2005)$affiliation)) # by continent
assortativity_nominal(network2005, as.factor(V(network2005)$country)) # by country


# Centrality 2006 ---------------------------------------------------------
network2006 <- graph_from_data_frame(d=df2006.a, vertices=df2006.n, directed=FALSE)
centr_degree(network2006, mode = "total")$centralization

# degree(network2006, v = V(network2006), mode = c("all"))

edge_density(network2006, loops=FALSE)

assortativity_nominal(network2006, as.factor(V(network2006)$affiliation)) # by continent
assortativity_nominal(network2006, as.factor(V(network2006)$country)) # by country



# Centrality 2007 ---------------------------------------------------------
network2007 <- graph_from_data_frame(d=df2007.a, vertices=df2007.n, directed=FALSE)
centr_degree(network2007, mode = "total")$centralization

# degree(network2007, v = V(network2007), mode = c("all"))

edge_density(network2007, loops=FALSE)

assortativity_nominal(network2007, as.factor(V(network2007)$affiliation)) # by continent
assortativity_nominal(network2007, as.factor(V(network2007)$country)) # by country



# Centrality 2008 ---------------------------------------------------------
network2008 <- graph_from_data_frame(d=df2008.a, vertices=df2008.n, directed=FALSE)
centr_degree(network2008, mode = "total")$centralization

# degree(network2008, v = V(network2008), mode = c("all"))

edge_density(network2008, loops=FALSE)

assortativity_nominal(network2008, as.factor(V(network2008)$affiliation)) # by continent
assortativity_nominal(network2008, as.factor(V(network2008)$country)) # by country



# Centrality 2009 ---------------------------------------------------------
network2009 <- graph_from_data_frame(d=df2009.a, vertices=df2009.n, directed=FALSE)
centr_degree(network2009, mode = "total")$centralization

# degree(network2009, v = V(network2009), mode = c("all"))

edge_density(network2009, loops=FALSE)

assortativity_nominal(network2009, as.factor(V(network2009)$affiliation)) # by continent
assortativity_nominal(network2009, as.factor(V(network2009)$country)) # by country



# Centrality 2010 ---------------------------------------------------------
network2010 <- graph_from_data_frame(d=df2010.a, vertices=df2010.n, directed=FALSE)
centr_degree(network2010, mode = "total")$centralization

# degree(network2010, v = V(network2010), mode = c("all")) 

edge_density(network2010, loops=FALSE)

assortativity_nominal(network2010, as.factor(V(network2010)$affiliation)) # by continent
assortativity_nominal(network2010, as.factor(V(network2010)$country)) # by country



# Centrality 2011 ---------------------------------------------------------
network2011 <- graph_from_data_frame(d=df2011.a, vertices=df2011.n, directed=FALSE)
centr_degree(network2011, mode = "total")$centralization

# degree(network2011, v = V(network2011), mode = c("all"))

edge_density(network2011, loops=FALSE)

assortativity_nominal(network2011, as.factor(V(network2011)$affiliation)) # by continent
assortativity_nominal(network2011, as.factor(V(network2011)$country)) # by country



# Centrality 2012 ---------------------------------------------------------
network2012 <- graph_from_data_frame(d=df2012.a, vertices=df2012.n, directed=FALSE)
centr_degree(network2012, mode = "total")$centralization

# degree(network2012, v = V(network2012), mode = c("all"))

edge_density(network2012, loops=FALSE)

assortativity_nominal(network2012, as.factor(V(network2012)$affiliation)) # by continent
assortativity_nominal(network2012, as.factor(V(network2012)$country)) # by country


# Centrality 2013 ---------------------------------------------------------
network2013 <- graph_from_data_frame(d=df2013.a, vertices=df2013.n, directed=FALSE)
centr_degree(network2013, mode = "total")$centralization

#  degree(network2013, v = V(network2013), mode = c("all"))

edge_density(network2013, loops=FALSE)

assortativity_nominal(network2013, as.factor(V(network2013)$affiliation)) # by continent
assortativity_nominal(network2013, as.factor(V(network2013)$country)) # by country



# Centrality 2014 ---------------------------------------------------------
network2014 <- graph_from_data_frame(d=df2014.a, vertices=df2014.n, directed=FALSE)
centr_degree(network2014, mode = "total")$centralization

# degree(network2014, v = V(network2014), mode = c("all"))

edge_density(network2014, loops=FALSE)

assortativity_nominal(network2014, as.factor(V(network2014)$affiliation)) # by continent
assortativity_nominal(network2014, as.factor(V(network2014)$country)) # by country


# Centrality 2015 ---------------------------------------------------------
network2015 <- graph_from_data_frame(d=df2015.a, vertices=df2015.n, directed=FALSE)
centr_degree(network2015, mode = "total")$centralization

#  degree(network2015, v = V(network2015), mode = c("all"))

edge_density(network2015, loops=FALSE)

assortativity_nominal(network2015, as.factor(V(network2015)$affiliation)) # by continent
assortativity_nominal(network2015, as.factor(V(network2015)$country)) # by country



# Centrality 2016 ---------------------------------------------------------
network2016 <- graph_from_data_frame(d=df2016.a, vertices=df2016.n, directed=FALSE)
centr_degree(network2016, mode = "total")$centralization

# degree(network2016, v = V(network2016), mode = c("all"))

edge_density(network2016, loops=FALSE)

assortativity_nominal(network2016, as.factor(V(network2016)$affiliation)) # by continent
assortativity_nominal(network2015, as.factor(V(network2015)$country)) # by country


# Centrality 2017 ---------------------------------------------------------
network2017 <- graph_from_data_frame(d=df2017.a, vertices=df2017.n, directed=FALSE)
centr_degree(network2017, mode = "total")$centralization

# degree(network2019, v = V(network2019), mode = c("all"))

edge_density(network2017, loops=FALSE)

assortativity_nominal(network2017, as.factor(V(network2017)$affiliation)) # by continent
assortativity_nominal(network2017, as.factor(V(network2017)$country)) # by country



# Centrality 2018 ---------------------------------------------------------
network2018 <- graph_from_data_frame(d=df2018.a, vertices=df2018.n, directed=FALSE)
centr_degree(network2018, mode = "total")$centralization

# degree(network2019, v = V(network2019), mode = c("all"))

edge_density(network2018, loops=FALSE)

assortativity_nominal(network2018, as.factor(V(network2018)$affiliation)) # by continent
assortativity_nominal(network2018, as.factor(V(network2018)$country)) # by country


# Centrality 2019 ---------------------------------------------------------
network2019 <- graph_from_data_frame(d=df2019.a, vertices=df2019.n, directed=FALSE)
centr_degree(network2019, mode = "total")$centralization

# degree(network2019, v = V(network2019), mode = c("all"))

edge_density(network2019, loops=FALSE)

assortativity_nominal(network2019, as.factor(V(network2019)$affiliation)) # by continent
assortativity_nominal(network2019, as.factor(V(network2019)$country)) # by country


# Centrality 2020 ---------------------------------------------------------
network2020 <- graph_from_data_frame(d=df2020.a, vertices=df2020.n, directed=FALSE)
centr_degree(network2020, mode = "total")$centralization

# degree(network2020, v = V(network2020), mode = c("all"))

edge_density(network2020, loops=FALSE)

assortativity_nominal(network2020, as.factor(V(network2020)$affiliation)) # by continent
assortativity_nominal(network2020, as.factor(V(network2020)$country)) # by country

