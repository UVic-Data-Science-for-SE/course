## ----load tidy--------------------------------------------------------------------------------
library(tidyverse)
library(foreign)



## ---------------------------------------------------------------------------------------------
jm1 = read.arff("http://promise.site.uottawa.ca/SERepository/datasets/jm1.arff")
jm1 <- as_tibble(jm1)


## ----filter-----------------------------------------------------------------------------------
jm1 = jm1 %>% mutate(norm = i / loc)
invisible(as.factor(jm1$defects)) #(but should be logical)
jm1 %>% count(defects)
ggplot(data = jm1) +
  geom_point(mapping = aes(y=`v(g)`, x=defects))
jm1 %>% filter(loc > 1000) %>% select(`v(g)`)


## ----binning----------------------------------------------------------------------------------
sum <- jm1 %>% summarise(count = n(), loc_m = mean(loc), loc_med = median(loc), loc_sd = sd(loc))
binned <- jm1 %>% mutate(bin = cut(loc, 4,c("small", "medium", "large", "giant")) )
binned %>% group_by(bin) %>% summarise(count = n(), med = median(loc))
# show distributions
ggplot(data = binned, mapping = aes(x=loc,y = ..density..)) + 
  geom_freqpoly(mapping = aes(colour = bin), binwidth=100)
ggplot(data = binned, mapping = aes(x = bin, y = `v(g)`)) + 
         geom_violin()

d <- density(jm1$loc)
plot(d)



## ----correlation------------------------------------------------------------------------------
ggplot(binned, aes(x=loc, y = `v(g)`)) + geom_point() + geom_smooth(method=lm)
ggplot(binned, aes(sample= `v(g)`)) + geom_qq_line() + geom_qq()
# correlation is the covariance normalized by standard deviations to normalize from -1 to 1


## ---------------------------------------------------------------------------------------------
library(corrplot)
cor_loc <- cor(binned$loc, binned$`v(g)`)
corrplot(cor(jm1[, 1:10]))


## ----pca--------------------------------------------------------------------------------------
jm1.pc <- prcomp(jm1[c(1:10)], center = TRUE, scale = TRUE)
summary(jm1.pc)


## ----vis-pca----------------------------------------------------------------------------------
library(ggfortify)
autoplot(jm1.pc, data = jm1, colour = 'defects')


## ---------------------------------------------------------------------------------------------
fit <-  glm(defects ~ ., data=jm1, family=binomial)
summary(fit)

