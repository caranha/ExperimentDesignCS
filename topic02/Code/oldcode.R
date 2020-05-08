# Old Code for reference

###############
## Lecture 2019
###############
library(ggplot2)

samp.normaldist <- rnorm(20) + 3
samp.withoutlier <- c(samp.normaldist,30)
samp.powerdist <- rlnorm(20)

# Mean
plot(samp.normaldist, ylim = c(0,5), xlab = "", ylab = "")
abline(h = mean(samp.normaldist), lty = 2, col = "green")

# Mean with Outlier
plot(samp.normaldist, ylim = c(0,30), xlim = c(1,21), xlab = "", ylab = "")
par(new=TRUE)
plot(samp.withoutlier[21], ylim = c(0,30), xlim = c(1,21), col = "red", pch = "*", xlab = "", ylab = "", cex = 4)
abline(h = mean(samp.normaldist), lty = 2, col = "green")
abline(h = mean(samp.withoutlier), lty = 3, col = "red")

dat <- data.frame("samples" = samp.powerdist, "index" = seq_along(samp.powerdist))

g <- ggplot(dat, aes(index,samples))
g <- g + geom_point() 
g <- g + geom_hline(aes(yintercept = mean(samples)), color = "red") 
g <- g + geom_hline(aes(yintercept = median(samples)), color = "green")
g <- g + annotate(geom = "text", x = 2, y = mean(dat$samples)+0.1, label = "mean", color = "red", size = 10) 
g + annotate(geom = "text", x = 2, y = median(dat$samples)+0.1, label = "median", color = "green", size = 10)

# percentiles
sample.perc <- sort(round(rnorm(20), digits = 2))
sample.perc
sample.perc[1] #.05 percentile
sample.perc[10] #.5 percentile
sample.perc[20] #.95 percentile

# Correlation

# mpg$hwy # Milleage of cars on highway
# mpg$displ # Weight of cars

# calculating the correlation (by hand)
corr.num <- sum((mpg$hwy - mean(mpg$hwy))*(mpg$displ - mean(mpg$displ)))
corr.den <- sqrt(sum((mpg$hwy - mean(mpg$hwy))^2) * sum((mpg$displ - mean(mpg$displ))^2))
corr.manual <- corr.num / corr.den
corr.manual

# calculating the correlation (by function)
cor(mpg$hwy,mpg$displ) # Calculating the correlation

lm(mpg$hwy~mpg$displ) # With high correlation, it makes sense to calculate the linear regression line

# plotting the correlation
ggplot(mpg, aes(hwy,displ)) + geom_point() + geom_smooth(method='lm',formula=y~x)

