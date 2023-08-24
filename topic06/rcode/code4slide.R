# Code 1: Effect of sample size on SD of sample mean

# Experiment: Throwing three dices and taking the average
# Repeat the experiment 10 times with different sample sizes
sample_2_10 <- replicate(10, mean(replicate(2, sum(sample(6,3)))))
sample_20_10 <- replicate(10, mean(replicate(20, sum(sample(6,3)))))
sample_200_10 <- replicate(10, mean(replicate(200, sum(sample(6,3)))))

print(c(mean(sample_2_10), sd(sample_2_10)))
print(c(mean(sample_20_10), sd(sample_20_10)))
print(c(mean(sample_200_10), sd(sample_200_10)))

# Calculating the power of the experiment "3D6"
## Standard power calculation
power.t.test(n = 20, sd = 2.1, sig.level = 0.05, type = "one.sample", alternative = "two.sided", delta = 0.5)

## Increasing the minimum difference
power.t.test(n = 20, sd = 2.1, sig.level = 0.05, type = "one.sample", alternative = "two.sided", delta = 1.5)

## Checking for sample size
power.t.test(power = 0.85, sd = 2.1, sig.level = 0.05, type = "one.sample", alternative = "two.sided", delta = 0.5)

# Calculating power for the two sample unequal variance case
install.packages("MESS") 
library(MESS)
