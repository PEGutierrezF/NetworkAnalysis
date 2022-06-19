



# ---------------------------------------------
# Generalized linear model
# 18 Jun 2022
# Pablo E. Gutiérrez-Fonseca
# pabloe.gutierrezfonseca@gmail.com
# ---------------------------------------------
#  



df <- data.n.papers %>% 
  select(year, authors, authors_LA) %>% 
  tidyr::pivot_longer(cols=c('authors','authors_LA'),
                      names_to = 'coauthors', 
                      values_to= 'value') 

# df$numbers<-1:nrow(df)
  
df


df.b <- df %>% filter(coauthors == "authors")
mod1 <- glm(value~year, family=poisson, data=df.b)
summary(mod1)

m1pred <- predict(mod1, type = "response")

plot(value~ year, df.b)
lines(df.b$year, m1pred, col = "blue", lwd = 2)



df.c <- df %>% filter(coauthors == "authors_LA")
mod2 <- glm(value~year, family=poisson, data=df.c)
summary(mod2)

m2pred <- predict(mod2, type = "response")

plot(value~ year, df.c)
lines(df.b$year, m2pred, col = "blue", lwd = 2)

