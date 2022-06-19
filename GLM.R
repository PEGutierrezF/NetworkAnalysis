



# ---------------------------------------------
# Generalized linear model
# 18 Jun 2022
# Pablo E. Gutiérrez-Fonseca
# pabloe.gutierrezfonseca@gmail.com
# ---------------------------------------------
#  



df <- data.n.papers %>% # data frame
  select(year, authors, authors_LA) %>% # select columns
  tidyr::pivot_longer(cols=c('authors','authors_LA'), # the names of the columns to pivot
                      names_to = 'coauthors', # the name for the new character column
                      values_to= 'value') # the name for the new values column

# df$numbers<-1:nrow(df)
  
df


df.b <- df %>% filter(coauthors == "authors") # data frame, filter (select) by authors
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

