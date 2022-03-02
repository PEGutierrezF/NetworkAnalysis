



# ---------------------------------------------
# Libraries
# 01 Mar 2022
# Pablo E. Gutiérrez-Fonseca
# pabloe.gutierrezfonseca@gmail.com
# ---------------------------------------------
#  




# cleans global environment
rm(list = ls())


libraries <- c("ggplot2","igraph", "dplyr", "ggraph", 
               "ggnetwork","ITNr", "intergraph","patchwork")
lapply(libraries, require, character.only = TRUE)





