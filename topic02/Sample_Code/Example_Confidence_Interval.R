
# This script is an example for how to calculate and use point and interval estimators.
# It is better if you run this script one line at a time at first, so you can understand
# what is going on. When you want to use this code to analyze your own data, you 
# should create a new script from scratch for that.

## Scenario
# In this example, we are comparing the running speed of 
# mergesort and bubblesort.
# First run the 'sorting.py' file, and store the result as "algorithms.csv"

## Loading The Data
# Set working directory
setwd("~/Dropbox/02_EXPDE_2023/LectureNotes/topic02/Sample_Code")

# load csv file
runtime <- read.csv("algorithms.csv")

# Check its contents
print(runtime)

# separate the data between the two algorithms
rt_mergesort <- runtime[which(runtime$algo == "merge"),]
rt_bubblesort <- runtime[which(runtime$algo == "bubble"),]

## Calculating the point indicators
# To characterize the running time, we want to know:
# - Mean running time for each algorithm (how much time it takes)
# - Variance for each algorithm (how reliable is our measure)

# Mean = sum of observations / number of observations
mean_merge <- mean(rt_mergesort$time)
mean_bubble <- mean(rt_bubblesort$time)

# sample error = sum of differences from mean / number of observations
# Check slides for formula
se_merge <- sd(rt_mergesort$time)
se_bubble <- sd(rt_bubblesort$time)

print("Merge sort: Mean, Sample error")
print(c(mean_merge, sd_merge))

print("Bubble sort: Mean, Sample error")
print(c(mean_bubble, sd_bubble))

# When reporting the the mean of the observations, 
# you should also report the sample error as an indication of uncertainty.

## Calculating the interval indicators
# The confidence interval is a way to visualize the uncertainty
# related to the statistic being measured. 

# if the confidence is 0.95 (95%), the parameter alpha is 1-confidence.
alpha <- 0.05

# The confidence interval is composed of an upper bound and lower bound
ci_bounds <- function(x,alpha) {
  low <- mean(x) + qt(alpha/2, length(x)-1)*(sd(x)/sqrt(length(x))) 
  hi <- mean(x) + qt(1 - alpha/2, length(x)-1)*(sd(x)/sqrt(length(x)))
  return(c(low,hi))
}

ci_merge <- ci_bounds(rt_mergesort$time, alpha)
ci_bubble <- ci_bounds(rt_bubblesort$time, alpha)

# With 95% confidence, we expect the true value of the 
# mean running time to be between the lower and upper bounds below:
print(ci_merge)
print(ci_bubble)

## Visualization 
# It is difficult for people to understand these measures by using 
# only numbers. So let's create a simple plot to show the confidence 
# interval.

library(tidyr); library(ggplot2)
# these packages help with data managing and visualization
# use install.packages("packagename") to install the package

ggplot(data = runtime, aes(x = algo, y = time)) +
  geom_point(size = 4, alpha = .5) + # always plot the raw data
  stat_summary(fun.data = "mean_cl_normal", geom = "crossbar") +
  labs(title = "95% Mean Confidence Intervals")
# You can learn how to make better plots by looking at the 
# manual for the 'ggplot' package

## A more interesting plot
# Unfortunately, if you run the command above, you will notice that 
# the confidence intervals are very small. This is because the 
# runtime is very close for the same algorithm, and very different for 
# different algorithms. So it is clear that the runtime of the two algorithms 
# above is very different.

# Let's see a more visually interesting example with the height data.
students <- read.csv("rawdata/student_data.csv")

# In the data above, we have the height, weight, course and gender 
# of the students. Let's plot the confidence interval of the heights, 
# based on the course:

ggplot(data = students, aes(x = Course, y = Height.m)) +
  geom_point(size = 4, alpha = .5) + # always plot the raw data
  stat_summary(fun.data = "mean_cl_normal", geom = "crossbar") +
  labs(title = "95% Mean Confidence Intervals")

# In this plot, there is a large overlap between the confidence interval
# of the two courses.

## Other questions
# 1. See how the confidence interval changes when you use a different 
#    number of observations, or a different value for alpha.

# 2. Using the formulas in the class slide, measure the confidence 
#    interval for the sample error.


