


library(ggplot2)
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


# 2 -----------------------------------------------------------------------

# Retrieve the states map data and merge with crime data
latam <- c()

# Retrievethe map data
latam.maps <- map_data("world", region = latam)


ggplot(latam.maps, aes(x = long, y = lat)) +
  geom_polygon(aes(group = group, fill = region))+
  geom_text(aes(label = region), data = country.paper,  size = 3, hjust = 0.5)+
  scale_fill_viridis_d()+
  theme_void()+
  theme(legend.position = "none") +
  
  #Axis  
  theme(axis.title.x = element_text(size = 16, angle = 0)) + # axis x
  theme(axis.title.y = element_text(size = 16, angle = 90)) + # axis y
  theme(axis.text.x=element_text(angle=0, size=14, vjust=0.5, color="black")) + #subaxis x
  theme(axis.text.y=element_text(angle=0, size=14, vjust=0.5, color="black"))  #subaxis y



# Authors per Country -----------------------------------------------------

# Retrieve the states map data and merge with crime data
latam <- c('Argentina', 'Brazil', 'Belize', 'Bolivia',
           'Colombia', 'Costa Rica', 'Chile', 'Cuba', 'Dominican Republic',
           'Ecuador', 'El Salvador', 'Guatemala', 'Guyana', 'Haiti',
           'Honduras', 'Jamaica', 'Mexico', 'Nicaragua', 
           'Panama', 'Paraguay', 'Peru', 'Puerto Rico', 'Suriname', 
           'Trinidad and Tobago', 'Uruguay', 'Venezuela')

latam.maps1 <- map_data("world", region = latam)

n.papers <- tribble(~region, ~papers,
                    'Argentina', 114,
                    'Brazil', 961,
                    'Belize', 0,
                    'Bolivia', 13,
                    'Colombia', 115,
                    'Costa Rica', 49,
                    'Chile', 32,
                    'Cuba', 4,
                    'Dominican Republic', 0,
                    'Ecuador', 89,
                    'El Salvador', 0,
                    'Guatemala', 2,
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
                    'Suriname', 0,
                    'Trinidad and Tobago', 0,
                    'Uruguay', 1,
                    'Venezuela', 8)

. <- left_join(latam.maps1, n.papers, by="region")


a <- ggplot(., aes(long, lat, group = group))+
  geom_polygon(aes(fill = papers ), color = "white") +
  scale_fill_viridis_c(name='# Authors', option = "C") +
  coord_equal() +
  theme_bw() +
  
  #Axis  
  theme(axis.title.x = element_text(size = 16, angle = 0)) + # axis x
  theme(axis.title.y = element_text(size = 16, angle = 90)) + # axis y
  theme(axis.text.x=element_text(angle=0, size=14, vjust=0.5, color="black")) + #subaxis x
  theme(axis.text.y=element_text(angle=0, size=14, vjust=0.5, color="black"))  #subaxis y

a



# Number of Countries -----------------------------------------------------

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


countries <- c('Argentina', 'Bolivia', 'Belize', 'Brazil',  
           'Colombia', 'Costa Rica', 'Chile', 'Cuba', 'Dominican Republic', 'Dominica',
           'Ecuador', 'El Salvador', 'French Guiana', 'Guatemala', 'Guyana', 
            'Haiti','Honduras', 'Jamaica', 'Mexico', 'Nicaragua', 
           'Panama', 'Paraguay', 'Peru', 'Puerto Rico', 'Suriname', 
           'Trinidad and Tobago', 'Uruguay', 'Venezuela')

countries.maps <- map_data("world", region = countries)

country.papers <- tribble(~region, ~papers,
                    'Argentina', 33,
                    'Bolivia', 8,
                    'Belize', 0,
                    'Brazil', 242,
                    'Colombia', 41,
                    'Costa Rica', 35,
                    'Chile', 9,
                    'Cuba', 2,
                    'Dominican Republic', 0,
                    'Dominica', 2,
                    'Ecuador', 44,
                    'El Salvador', 0,
                    'French Guiana', 3,
                    'Guatemala', 3,
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
                    'Suriname', 0,
                    'Trinidad and Tobago', 2,
                    'Uruguay', 0,
                    'Venezuela', 7)

df.country <- left_join(countries.maps, country.papers, by="region")

b <- ggplot(df.country, aes(long, lat, group = group))+
  geom_polygon(aes(fill = papers ), color = "white")+
  scale_fill_viridis_c(name='# Papers', option = "C") +
  coord_equal() +
  theme_bw() +
  #Axis  
  theme(axis.title.x = element_text(size = 16, angle = 0)) + # axis x
  theme(axis.title.y = element_text(size = 16, angle = 90)) + # axis y
  theme(axis.text.x=element_text(angle=0, size=14, vjust=0.5, color="black")) + #subaxis x
  theme(axis.text.y=element_text(angle=0, size=14, vjust=0.5, color="black"))  #subaxis y

b

Fig.5 <- a + b
Fig.5

Fig.5 +  ggsave("Figure 5.jpg",width = 600, height = 350, units = "mm")
