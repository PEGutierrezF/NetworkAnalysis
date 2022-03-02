



# ---------------------------------------------
# Libraries
# 01 Mar 2022
# Pablo E. Guti�rrez-Fonseca
# pabloe.gutierrezfonseca@gmail.com
# ---------------------------------------------
#  



# cleans global environment
rm(list = ls())


libraries <- c("ggplot2","igraph", "dplyr", "ggraph","readxl", 
               "ggnetwork","ITNr", "intergraph","patchwork",
               "xts","emmeans", 'quantmod', "ggpubr")
lapply(libraries, require, character.only = TRUE)




