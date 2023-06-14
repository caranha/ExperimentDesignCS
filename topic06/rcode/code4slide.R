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

## more flexible power_t_test function from the MESS package
install.packages("MESS") #note: installing a package takes forever
library(MESS)

## Two samples, equal variance:
power.t.test(delta = 15, sd = 15, sig.level = 0.05, power = 0.8,
             type = "two.sample", alternative = "one.sided")

## Unequal variances example 1: Optimal Allocation
## Consider the previous experiment, but the variance of the second sample is half.
MESS::power_t_test(n=NULL, sd=15, delta=15, 
                   ratio=2, sd.ratio=2,
                   power=0.8, sig.level = 0.05,
                   type="two.sample", alternative="one.sided")

## Unequal variances example 2: Balanced Design
## Consider the sample size the same for both treatments
MESS::power_t_test(n=NULL, sd=15, delta=15, 
                   ratio=1, sd.ratio=2,
                   power=0.8, sig.level = 0.05,
                   type="two.sample", alternative="one.sided")

## Unequal variances example 3: Power Calculation
## Consider a fixed sample size of 20 and 30 observations
MESS::power_t_test(n=20, sd=15, delta=15, 
                   ratio=1.5, sd.ratio=2,
                   power=NULL, sig.level = 0.05,
                   type="two.sample", alternative="one.sided")

MESS::power_t_test(n=NULL, sd=15, delta=15, 
                   power=0.8, sig.level = 0.05,
                   type="paired", alternative="one.sided")
