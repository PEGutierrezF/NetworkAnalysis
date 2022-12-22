



# ---------------------------------------------
# Libraries
# 01 Mar 2022
# Pablo E. Gutiérrez-Fonseca
# pabloe.gutierrezfonseca@gmail.com
# ---------------------------------------------
#  



# cleans global environment
rm(list = ls())

# install.packages(c("ggplot2","igraph", "dplyr", "ggraph","readxl", 
#                  "ggnetwork","ITNr", "intergraph","patchwork",
#                  "xts","emmeans", 'quantmod', "ggpubr","janitor"))

libraries <- c("ggplot2","igraph", "dplyr", "ggraph","readxl", 
               "ggnetwork","ITNr", "intergraph","patchwork",
               "xts","emmeans", 'quantmod', "ggpubr","janitor",
               'scales', 'ggalluvial','writexl')

lapply(libraries, require, character.only = TRUE)



