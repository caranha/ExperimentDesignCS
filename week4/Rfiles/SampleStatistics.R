
# Generate a population array with 100 elements
# In practice, we don't know the population!
population <- rnorm(100)

# x1, x2, and x3 are randomly chosen samples from the population.
# Imagine each of them are an experiment where you repeat the test
# Five times.
x1 <- sample(population,5)
x2 <- sample(population,5)
x3 <- sample(population,5)

# Here is what one of them might look like:
# [1]  0.6028260  0.1333065  1.1145946 -0.8675467 -0.4329469

# now let's see the means of each element:
c(pop=mean(population),x1=mean(x1),x2=mean(x2),x3=mean(x3))

# should look something like this
#        pop          x1          x2          x3 
# 0.05722922  0.11004669 -0.10459150  0.12630965


# so the population of all samples will also have its own statistics
# which are related to the statistics of the population.

samplemeans = c(mean(x1),mean(x2),mean(x3))

# mean and deviation of the samples:
mean(samplemeans)
sd(samplemeans)
