Hello everyone, I'm Claus Aranha
from the University of Tsukuba, and this
is Experiment Design for Computer Sciences.

In this video, I am going to explain
what are "Point Estimators".

By the way, this video and the next one
will be a bit mathematical. If you have any
difficulty, remember that you can pause and
rewind the video, and don't forget to ask
questions in the office hours.

==

In the last video, we explained that
a "statistic" is a function calculated
from experimental data.

A point estimator is a type of statistic.

Formally, we say that a point estimator
is the statistic that provides the value of
maximum plausibility of a given population parameter.

What does this mean?

Let's say that we have a model M, and we have a
parameter "theta" in this model. For example, the
mean height of students in the university.

A "Point Estimator" will calculate an estimate
for this parameter from the data that we obtained
in our experiment.

So we say that theta-hat is an estimation of
the parameter theta, for the population X.

==

There are many different point estimators
that we use in science and engineering to calculated
parameters of interest in our models.

Some parameters that we are interested in calculating
include the mean of the population, the variance, the proportion of some value, the difference between two populations, etc.

One thing that is important to note is that for each of these parameters, there may be more than one way to calculate the estimate. We are going to talk more about this in a second.

==

The value calculated by the point estimator is a random Variable, and depends on the sample. This means that if we are really unlucky, the estimate that we calculated can be very different from the true parameter.

For example, imagine again that we want to calculate the average height of the students in the university of Tsukuba. But because we are a bit lazy, we did our experiment using only students from our circle.

Unfortunately, we are in the basketball circle. So you can imagine that the value calculated by our statistic will be much higher than what imagine is the true value of the "mean height" parameter.

Anyway, when we talk about the difference between the estimated value and the true value, we want to separate this difference in two components: The error and the bias.

The error is the natural change that happens because of the variation in our observations.

The bias, on the other hand is a *systematic* difference between the estimate and the true value.

Let's see an example of statistical bias.

==

Ok, we are back again with the "calculate the height of
the students" example.

This time, in our experiment, we choose 10 students randomly, and we calculate the height of each student.

Usually you'd think to use the average of the sample. But just to understand the concept of bias better, let's consider two other statistics to calculate the value of the height parameter from this sample.

The first one is to use the height of the shortest of the ten students as our representative height.

The second one is to use the height of only one of the ten students in the sample, at random.

If you think about these two statistics for a little bit, you can see that the first statistic will give a value that is usually smaller than the value of the true parameter of the model.

Not always, by the way, remember the basketball team, for example, but usually smaller. So we can say that the first
estimator is a *biased* estimator.

What can we say about the second one? Think about it by yourself.

==

Ok, so what is an *unbiased* estimator?

An unbiased estimator is a statistic that, when it has an error, that error is equally distributed above and below the true value.

We can describe this mathematically by saying that the difference between the expected value of the estimator and the true value of the parameter is zero.

==

Let's use this concept to explain why the average is an unbiased estimator for the mean parameter of the population.

Let's call our sample to be x1, x2, ... xn, and
x-bar is the average that we calculate from this sample.

Remember that the true parameter that we are trying to estimate is the mean of the population, which we call "mu".

Now, the definition of the mean, "mu", is that it is the expected value of a single observation. So we can calculate the expected value of the average like this:

The expected value of the average is the expected value
of the sum of observations, divided by the size of the sample.

The expected value of one observation is "mu", so we have "mu" times "n", divided by "n", and then the expected value of the average is "mu" too.

So this shows that the sample average is an unbiased estimation of the population mean.

==

It is not hard to define several unbiased estimators for a given parameter.

For example, if we think about the average, another unbiased estimator for the mean would be, for example, the maximum observation in the sample, plus the minimum observation in the sample, divided by two.

Another unbiased estimator for the mean would be, simply, the value of one single observation.

Both of these estimators are unbiased, but one of them has a bigger variance than another. Usually, we want an estimator that is both unbiased and has a variance that is as small as possible.

==

Since we want an estimator with as small variance
as possible, this means that we can calculate the
standard error and the variance of an estimator.

Please note that here we are not talking about the
standard error of the sample, or of the observation,
but the standard error of the process that
calculates the estimate.

To calculate the standard error of the estimator, we use
the sample mean an error. If you think about it, this means that the standard error of the estimator is itself an estimate.

This recursion can go pretty deep if you let it!

==

The important thing, though, is that we want to know the
standard error of our estimators, to evaluate how useful they are.

Here are some formulas for how we calculate the standard error of the mean, the variance, and the standard deviation.

Note that here "s" means the error calculated from the sample.

==

Let's see a quick example.

Consider a factory that produces cables. We want to
check that the process in this factory is consistent.

Let's assume that the process of cable fabrication should,
in theory, produce cables with a mean resistance of 50 ohms,
and a variance of 4 ohms.

==

So to verify if the the factory production is consistent,
we do an experiment, where we take 25 cables
from the factory, and measure their resistance.

The sample mean would be calculated as:

X-bar equal 1 over the sample size, times the sum of the
sample values.

This sample mean, as we discussed before, would follow
a normal distribution, with expected value equal to 50 ohms,
and standard error equals to 0.4 ohms.

Note here that the standard error of the sample is smaller
than the error of the population. This is natural,
because we are calculating the average of many observations.
This will reduce the sample error, and is something
that we may want to manipulate in the future.

==

Now, before we finish, I want to quickly touch on a topic that is very important, which is the Central Limit Theorem. This is the reason that the error of the sample is smaller than the error of a single observation, but the central limit theorem goes beyond that.

Remember that for the cable example, we assumed that the distribution of the resistance value for the cable production followed a normal curve. Because of that, the distribution of the average also follows a normal curve.

Normal distributions have some very nice properties, so whenever possible we want our statistics to follow normal distributions.

But how hard is it to make a statistic that follows the normal distribution?

==

The key idea of the Central Limit Theorem (CLT),
is that the distribution of the mean of a sample
will be approximately normal, even when the
underlying population does not follow a normal distribution.

==

There are some exceptions for this idea, but it works
for a surprising amount of distributions.

So in general, if you calculate the mean of a sample
that is large enough, the distribution *of that
mean* will be close to normal (not the distribution
  of the observations, pay attention to this point).

Distribution of the observations <-> distribution of the mean.

Please see this link in the materials for more information
regarding the CLT. We will not be studying the
CLT itself in this course, but a lot of the techniques that
I will describe rely on the CLT for their effectiveness,
so it is worth it to understand it to a degree.

==

This is where we will end this video. In the next one, I will
talk about Interval Estimators and, in particular, confidence Intervals.
See you there!
