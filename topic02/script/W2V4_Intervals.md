Hello everyone, I'm Claus Aranha from the University of Tsukuba, and this
is Experiment Design for Computer Sciences.

In this video I'm going to finish our introduction to statistic indicators
by talking about interval estimators, and in particular Confidence Intervals.

===

In the last video, we talked about point estimators, and explained that they
are functions that use data from an experiment to calculate the value of
a parameter in a population model.

We also discussed that there is an error and a bias associated with the
calculation of a point estimator. Another way to think about this is that
there is an UNCERTAINTY associated with a point estimator.

A statistical interval is a statistic that helps us estimates
this uncertainty associated with an estimate.

Let's remember the cable factory example. We have a factory that produces
electrical cables, and we are interested to know if the resistance of these
cables is in a certain acceptable range.

We can describe the model of the expected resistance of the cables as a
normal curve, with mean 50, and error 2. This means that every time we take
a cable produced from this factory, the resistance of that cable
is expected to come from this curve.

Imagine that we did an investigation on the factory, and from 25 cables we
calculated a sample mean of 48. Because of the error associated with the
observations, we know that the mean of a sample will not be exactly
50, but how much error can we expect from a random sample?

In other words, when we calculate a point estimate, how far away from the true
value do we expect it to be?

==

A statistical interval, like the point estimator, is a function that calculates
a value from the experimental data. It calculates a region that is
likely to contain the true value of an estimated parameter.

The statistical interval allows us to quantify the level of error associated
with an estimate. This helps us arrive to a better conclusion about
data from an experiment. For example, by using a statistical interval,
we can say not only that we estimate the mean to be 48, but also
how certain we are of that estimate.

There are three common types of statistical interval:
- Confidence Interval,
- Tolerance Interval,
- Prediction Interval.

In this lecture, we are going to talk only about the first one,
but you can learn about the others in the recommended readings.
If you know about one, you can understand the others easily.

==

Let's talk about confidence intervals.

Confidence intervals quantify the degree of uncertainty
associated with the estimation of a population parameter,
such as the mean or the variance.

The idea of the confidence interval is that we define a parameter,
"alpha", and the confidence interval will calculate two values,
a minimum and a maximum. The interval between the minimum and the maximum
contains the true value of the parameter with a confidence of
100 minus alpha.

Another way to understand this alpha value is as a "hit rate". Let's say
that we choose alpha to be 5, so we are calculating a 95% confidence interval.
The confidence interval will calculate a maximum and a minimum value,
and we say that this interval has a 95% chance of "capturing" the
true value of the parameter.

So when alpha is big, our confidence interval will be less precise,
and when alpha is small, our confidence interval will be more precise.

==

How do we calculate the confidence interval?

Let's think of the simplest situation, where we assume that the variable of
interest follows a normal distribution, and we assume that we know the variance
to be *sigma squared*, then we can calculate the maximum and minimum
values of the confidence interval using this equation.

Here, x-bar is our estimate for the mean. This z alpha divided by two
is the "alpha divided by two" quantile of the normal distribution.
So if alpha is 0.1, then this will be the 0.05 (or five percent)
quantile of the normal distribution. This is a value that we can get
from a table.

Looking at this formula, we can notice a few things:
First, that the equation is symmetric. The minimum value is x-bar minus
this z component, and the maximum value is x-bar plus the z component.

The quantile is closer to 0 when alpha is close to 0.5, or 50 percent.
So bigger confidence means a wider interval, while smaller confidence
means a narrower interval. This makes sense, To have a bigger "hit rate",
we need a wider area right?

Finally, the z component is divided by "n", which is the sample size.
This means that the bigger the sample size, the narrower our confidence
interval will be. This also makes sense, right?

Here, sigma is the true standard error that we assume we know. But what if
we don't know the true standard error? Then we can use this
second formula. This formula is almost the same as the first one, but it
has two big differences.

The first is that we use "s", which is the error
of the sample, as an estimate of the standard error. The second difference
is that we use "t" instead of "z", which means we use Student T distribution
instead of the normal distribution. We will talk more about the
Student T distribution in a future class. But it can also be easily calculated
with a Python or R library.

==

Here is an example of what we can expect from the confidence
interval calculation.

We calculated many confidence intervals with 95% confidence using a simulated
sample from our cable factory example. So for each sample, we generated 25
observations from a normal distribution, with mean 25 and variance 2, and
we calculated the confidence interval of that sample.

Each bar is one confidence interval, and the dotted line in the middle is
the true mean (50). We can see that most of the confidence intervals include
the true mean (the green ones), but a few of them, the red ones, don't include
the mean.

One thing that is important to note is that when the confidence interval miss,
they can miss by a big amount. This is important to understand, the confidence
interval does not say anything about where the true value is, if it is in the
middle of the confidence interval, or near the end, and if it misses,
it could be anywhere.

So when you use a confidence interval to analyze your experiments, make sure
to understand how to interpret it correctly: A confidence interval with, say,
90% confidence, has a 90% chance to include the true value, but that's about it.

==

Finally, here is an example of how we calculate the confidence interval
for another statistic, namely the variance, sigma squared.

You can see that the equation follows a similar structure, we calculate the
minimum estimated value and the maximum estimated value from our point
estimator. In this case the point estimator for the variance is the sample
error, s.

Also, we use the chi-squared distribution, which represents the expected
distribution of the variance. So this formula calculate maximum and minimum
values for the estimate of the variance of an experiment, in the case that
what we are trying to estimate about our system is its variance.

You can also find confidence interval for other statistics of interest
very easily.

==

So, to summarize our lecture on point and interval estimators.

Statistics are functions that can estimate facts about the world from
the experiment data.

The point estimator include things like the sample mean, the sample error,
correlation, etc. They calculate parameters of the model that explain
the system that we are studying.

Remember that the point estimator is not the real value, it is an approximation
of the real value. It can have a bias and a variance associated with it.

Interval estimators include things like the Confidence Interval.
They are statistics that use the experiment data to calculate an interval
with a maximum and a minimum value.

This is better than the point estimate, because it gives us an idea about
how much uncertainty we have about our estimator.

In the case of the confidence interval, the size of the estimator
depends on the confidence parameter, that we choose, and also of the sample
size. So by obtaining more observations from our experiment, we can
calculate a more precise confidence interval.

Now what I ask of you is that you think about these point and interval
indicators, and think about how you can use them to describe the
data that you obtain in your experiment for the first report!

==

To know more about point and interval estimator, please look at these
recommended reads. Specially the second one describe other statistical
intervals beyond the confidence interval.

==

In the last video, I will show very briefly a code example of how to
calculate the confidence interval for a set of data.

This code example will be in R. I will not explain how to program
in R, it is very easy. If you want to have a quick crash course,
you can look at this link, "R for beginners", and you can use R with
the "Rstudio" program.

==

That is it for today, thank you for watching, and see you next time!
