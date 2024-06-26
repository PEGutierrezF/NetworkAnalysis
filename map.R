



# ---------------------------------------------
# Alluvial plots Authors vs Origin of the Journal
# 08 Jul 2022
# Pablo E. Gutiérrez-Fonseca
# pabloe.gutierrezfonseca@gmail.com
# ---------------------------------------------
#  



# cleans global environment
rm(list = ls())



# Authors per Country -----------------------------------------------------

latam <- c('Argentina','Aruba', 'Brazil', 'Belize', 'Bolivia','Bonaire, Saint Eustatius and Saba',  
           'Colombia', 'Costa Rica', 'Chile', 'Cuba', 'Dominican Republic',
           'Ecuador', 'El Salvador', 'Guadeloupe', 'Guatemala', 'Grenada', 'Guyana', 
           'Haiti', 'Honduras', 'Jamaica', 'Mexico', 'Nicaragua', 
           'Panama', 'Paraguay', 'Peru', 'Puerto Rico', 
           'Saint Lucia' , 'Saint Kitts and Nevis', 'Saint-Martin', 'Saint-Barthélemy',
           'Saint Vincent and the Grenadines', 'Suriname', 
           'Trinidad and Tobago', 'Uruguay', 'Venezuela','Virgin Islands, U.S.')

latam.maps1 <- map_data("world", region = latam)

n.papers <- tribble(~region, ~papers,
                    'Argentina', 114,
                    'Aruba', 0,
                    'Brazil', 961,
                    'Belize', 0,
                    'Bolivia', 13,
                    'Bonaire, Saint Eustatius and Saba', 0,
                    'Colombia', 115,
                    'Costa Rica', 49,
                    'Chile', 32,
                    'Cuba', 4,
                    'Dominican Republic', 0,
                    'Ecuador', 89,
                    'El Salvador', 0,
                    'Guyana', 0,
                    'Guatemala', 2,
                    'Grenada', 0,
                    'Guyana', 0,
                    'Haiti', 0,
                    'Honduras', 0,
                    'Jamaica', 0,
                    'Mexico', 55,
                    'Nicaragua', 0,
                    'Panama', 7,
                    'Paraguay', 0,
                    'Peru', 6,
                    'Puerto Rico', 16,
                    'Saint Lucia' , 0,
                    'Saint Kitts and Nevis', 0, 
                    'Saint-Martin', 0,
                    'Saint-Barthélemy', 0,
                    'Saint Vincent and the Grenadines', 0,
                    'Suriname', 0,
                    'Trinidad and Tobago', 0,
                    'Uruguay', 1,
                    'Venezuela', 8,
                    'Virgin Islands, U.S.', 0)

latam.map2 <- left_join(latam.maps1, n.papers, by="region")

dff <- latam.map2 %>%  # add country name
  group_by(region) %>%
  summarize(long = mean(long, na.rm = T), 
            lat = mean(lat, na.rm = T), 
            group = group)


a <- ggplot(latam.map2, aes(long, lat, group = group))+
  geom_polygon(aes(fill = papers ), color = "white") +
  scale_fill_viridis_c(name='# Authors', option = "C") +
  
#  geom_text(data = dff, aes(long, lat, label = region,
 #                                          group = group),
  #                        size = 3, fontface = "bold") +
  coord_equal() +
  theme_bw() +
  
  geom_hline(yintercept = 0, linetype = "dashed", color='gray70') +
  
  #Legend
  theme(legend.title=element_text(size=18)) +
  theme(legend.text=element_text(size=16)) +
  
  #Axis  
  theme(axis.title.x = element_text(size = 18, angle = 0)) + # axis x
  theme(axis.title.y = element_text(size = 18, angle = 90)) + # axis y
  theme(axis.text.x=element_text(angle=0, size=14, vjust=0.5, color="black")) + #subaxis x
  theme(axis.text.y=element_text(angle=0, size=14, vjust=0.5, color="black"))  #subaxis y

a



# Number of Countries -----------------------------------------------------
# df.t dataframe is in data analysis.R document
dt.country <- df.t %>% 
  group_by(year,PubID) %>% 
  filter(row_number()==1) %>% 
  print(n = Inf)

# Total per country
as.data.frame(dt.country) %>% 
  count(country_study)

# Total papers
as.data.frame(dt.country) %>% 
  count() 


countries <- c('Argentina', 'Aruba', 'Belize', 'Brazil', 'Bolivia', 'Bonaire, Saint Eustatius and Saba',  
           'Colombia', 'Costa Rica', 'Chile', 'Cuba', 'Dominican Republic', 'Dominica',
           'Ecuador', 'El Salvador', 'French Guiana', 'Guadeloupe', 'Guatemala', 'Grenada', 'Guyana', 
            'Haiti','Honduras', 'Jamaica', 'Mexico', 'Nicaragua', 
           'Panama', 'Paraguay', 'Peru', 'Puerto Rico', 
           'Saint Lucia' , 'Saint Kitts and Nevis', 'Saint-Martin', 'Saint-Barthélemy',
           'Saint Vincent and the Grenadines', 'Suriname', 
           'Trinidad and Tobago', 'Uruguay', 'Venezuela','Virgin Islands, U.S.')

countries.maps <- map_data("world", region = countries)

country.papers <- tribble(~region, ~papers,
                    'Argentina', 33,
                    'Aruba', 0,
                    'Belize', 0,
                    'Brazil', 242,
                    'Bolivia', 8,
                    'Bonaire, Saint Eustatius and Saba', 0,
                    "Caribe", 0,
                    'Colombia', 41,
                    'Costa Rica', 35,
                    'Chile', 9,
                    'Cuba', 2,
                    'Dominican Republic', 0,
                    'Dominica', 2,
                    'Ecuador', 44,
                    'El Salvador', 0,
                    'French Guiana', 3,
                    'Guyana', 0,
                    'Guatemala', 2,
                    'Grenada', 0,
                    'Guyana', 0,
                    'Haiti',0,
                    'Honduras', 2,
                    'Jamaica', 0,
                    'Mexico', 17,
                    'Nicaragua', 1,
                    'Panama', 12,
                    'Paraguay', 1,
                    'Peru', 8,
                    'Puerto Rico', 8,
                    'Saint Lucia' , 0,
                    'Saint Kitts and Nevis', 0, 
                    'Saint-Martin', 0,
                    'Saint-Barthélemy', 0,
                    'Saint Vincent and the Grenadines', 0,
                    'Suriname', 0,
                    'Trinidad and Tobago', 2,
                    'Uruguay', 0,
                    'Venezuela', 7,
                    'Virgin Islands, U.S.', 0)

df.country <- left_join(countries.maps, country.papers, by="region")


b <- ggplot(df.country, aes(long, lat, group = group))+
  geom_polygon(aes(fill = papers ), color = "white") +
  scale_fill_viridis_c(name='# Papers', option = "C") +
  coord_equal() +
  theme_bw() +
  
  geom_hline(yintercept = 0, linetype = "dashed", color='gray70') +
  
  #Legend
  theme(legend.title=element_text(size=18)) +
  theme(legend.text=element_text(size=16)) +
  
  #Axis  
  theme(axis.title.x = element_text(size = 18, angle = 0)) + # axis x
  theme(axis.title.y = element_text(size = 18, angle = 90)) + # axis y
  theme(axis.text.x=element_text(angle=0, size=14, vjust=0.5, color="black")) + #subaxis x
  theme(axis.text.y=element_text(angle=0, size=14, vjust=0.5, color="black"))  #subaxis y

b

Fig.5 <- a + b
Fig.5

Fig.5 +  ggsave("Figure 5.jpg",width = 600, height = 350, units = "mm")


# Other -------------------------------------------------------------------

world <- map_data("world")

world <- map_data("world")
americas <- subset(world, region %in% c("Brazil","Mexico", "Colombia", "Argentina",
                                        "Peru","Venezuela","Chile","Guatemala","Ecuador", "Bolivia", "Cuba",
                                        "Honduras", "Paraguay", "Nicaragua","El Salvador", "Costa Rica", "Panama",
                                        "Uruguay",  "Jamaica",  "Trinidad and Tobago", "Guyana", "Suriname", "Belize",
                                        "Barbados", "Saint Lucia", "Grenada", "Saint Vincent and the Grenadines", 
                                        "Antigua and Barbuda", "Saint Kitts and Nevis"))

ggplot(data = americas, aes(x = long, y = lat, group = group)) + 
  geom_polygon(fill = "white", color = "black") +
  geom_path(color="black") +
  coord_equal() +
  theme_bw() 


