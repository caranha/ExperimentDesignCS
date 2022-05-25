Hello Everyone, I'm Claus from the University
of Tsukuba, and this is Experiment Design for
Computer Sciences, Week 4.

In this video I want to talk about "Comparison Testing",
so let's get going.

==

In the last lecture we studied how to perform
a test of statistical inference, using the Null Hypothesis
method.

In the method that we studied last week, we had a single sample,
and we wanted to determine if that sample came from a population with
a specific mean.

In this week, we extend this method to work with the case where
we want to compare two samples, that may have come from two
different populations.

==

The comparison of two samples is very common. In fact, when many of
you hear the work "experiment", you immediately think of comparing "A" and
"B".

Maybe it was a bit surprising last time when we did an experiment to compare
a set of data with a fixed value.

Using statistical


So the comparison of two different
approaches is very common.
It's very common the situation where we have
two samples and you want to compare them.
For example,
let's say that you want to test a drug.
If you want to test a new drug,
just see if it's good again,
as this is the normal way to do
it is to do a controlled test in
the control test you have the
drug that is the treatment group,
and you have the control group,
which is a group that does not
take the truck.
And you gotta compare both of them.
When you're testing algorithm,
usually you want to test a new algorithm
and compare it with an old algorithm.
So again you have two samples,
1 sample with the results of
the new algorithm,
1 sample with the results
of the old algorithm.
Or maybe you're testing two different
website designs so you have two
websites and you check the user
preference for the first website and
they scores of the user preference
for the first website will be 1
sample and they scores for the
user preference for the second
website will be another sample.
So in all of these cases,
you have to compare two samples.
Now remember that last class we were
comparing 1 sample against a fixed value.
So in the last class it was one
sample against a fixed value.
In this class we're going to
compare two samples OK.
So this is called just sample testing.
So let's let's use a concrete example
to illustrate the calculation.
Let's say that we have I steel
factory and one of the steps of
the steel factory is to cut the
steel rods in fixed size.
So you want every rod to be
exactly let's say 50 meters.
So you want you have a machine that
cut every rod exactly 5th 50 meters.
However,
of course the machine does not
cut exactly 50 meters.
Sometimes it's 1 centimeter short.
Sometimes it's 1 centimeter long.
It's natural that there will
be a little bit of error.
Of course, you want to minimize this error.
You want this error to be
as small as possible,
so let's imagine that there is
an engineer that wants to create
a new process for cutting that
according to this engineer,
has a smaller cutting error.
OK,
so how would you do the experiment for that?
Think about it a little bit.
OK, let's let's test it.
So we have two methods for cutting steel.
Wrote the old method and the new method.
And we want to figure out which
one has the
smallest cutting error.
Now think about the following questions.
To design your experiment one,
how do we calculate the cutting
error of each of the methods?
The cutting error of the old method and
the cutting error of the new method?
Think about how we calculate that.
Then think about what is the observation
in our experiment and what is the sample.
OK, now.
Now, what is the variable that
measures the cutting error between
the difference in the two methods?
And finally, now that we have the measure,
the sample and the variable,
what is the statistical hypothesis?
And remember that last lecture I told
you that I statistical hypothesis
can be expressed as an equation.
So what is the statistical
hypothesis that we can use to in
to represent this experiment?
I'm going to answer each of these
questions in the following,
but before I do,
I suggest that you pause the video
now and try to answer these four
questions by yourself to exercise.
Your memory of last class.
OK.
Alright, let's continue.
So let's start with the first two questions.
How do we calculate the cutting error
and what is the observation and sample
necessary so we can think of the
cutting error as the difference of
the target left and the real left.
So we have the target left,
let's say 50 meters and the real left
it's like 50 meters and 10 centimeters,
so that difference is the cutting error.
Here we're going to call it X I -- L.
OK, now if we assume that the cutting
error depends only of the method of
cutting old method or new method,
we can estimate the mean cutting
error using a sample of rods.
So we get like 10 rods cut to using the
old method and we can calculate the
mean cutting error that is the sum of
the length of the rod minus the target
left divided by the number of rod.
So this is the mean cutting error 4.
That method,
the old method or the new method?
Now this gives us a mean cutting error,
so this mew.
Remember that mew usually means means.
So Muay is estimated by this average.
So Beauty is the real cutting error of
the method and EX is what we estimated.
So we estimated using the average
of the cutting error of the sample.
No, not that we do this.
We can start to think about
statistical differences so we can
do statistical inference.
For example,
let's think about only one method.
If this was last class,
we would only analyze one method,
so we could do a hypothesis test
like this is the error of method Y
equal or under a required value R?
So we can say OK,
we want to make a test to make
sure that our method is less or
the error dimming error of their
method is less than 10 centimeters.
OK,
so our new hypothesis is that the
error is less than 10 centimeter
or alternate hypothesis is that the
error is more than 10 centimeters.
We can use the technique from the
last lecture to solve this problem.
Now what if we want to compare
the new metal with the old one?
It's not one method versus a fixed
value is 1 method that has errors and
another method that also has errors.
So how do we compare that?
Well, so this is the idea.
Each of the methods under the
statistical analysis we represent each
of the methods as a random variable.
That this random variable is
distributed under a normal distribution,
so the population one would be the
first method with an estimated
error and a variance for this error.
The second method would be another
random variable with another
normal distribution with another
cutting error and another variance.
So we have two normal distributions,
one for the new method,
one for the old method.
No. This is where we start to use statistics.
If you remember from your statistic classes.
If you have two random variables that are
distributed under normal normal distribution,
you can add them together.
The sum of two normal distributions is also
a normal distribution or should be exact.
The sum of two variables to random
variables distributed in the normal
distributions is also a random variable
distributed in the normal distributions.
So we can start to think about of knew
variable and you random variable RDF,
which is the difference
between the older than you.
So what we're going to do is that we're
going to do our test all this Eid.
If this estimation of the difference
between the errors now because it DEF
also follows a normal distribution,
we can do exactly the same
thing that we did last class,
which is do a new hypothesis
alternate hypothesis test.
On this difference of errors.
So our new hypothesis will
be that both of the methods.
So what's the new hypothesis here?
The new hypothesis is that, well,
what's the simplest thing that could happen?
The simplest thing is that both
of the methods are indentical.
We created a new method,
but in reality the new method is not
very different from the old one,
so the new hypothesis that both
of the methods actually belong to
the same normal distribution and
the difference between the means.
Zero, so in the new hypothesis,
the difference between the means is 0.
In the alternate hypothesis,
the two methods are actually different,
so the difference between the
means is not zero,
so we're going to do our
test in this estimator,
which is the difference between
the means of the two methods.
So. Now that we have an idea
of what we want to test,
let's do the let's study the general
model for comparing that you samples.
So what I'm going to start talking now,
and if you did not understand what I said
until the last feed to the last slide,
I recommend that you stop and go back,
because what I'm going to talk about
now is the general statistical
model for any comparison.
OK, any choose sample?
Any sample comparison?
So let's consider that we have some value Y.
Some estimated value I that is
taken from several methods, method,
one, method two or method tree.
We understand that this value comes from
some normal distribution with mean MU I
and we also have an error that's away.
So this error means that this
is a random variable.
Every time we sample it,
it would be a little bit different.
So if we consider that we can represent
one observation from our experiment.
Is why I change so YIJ SO1
observation from our experiment can
be represented as the mean of I.
The meaning of method I plus the error of
method I and observation JOI is one or two.
Let's say if we only have two methods and
J is every observation that we are happy.
So this is the random variable
that represents every observation
in our experiment.
It has one component which is
the mean of the method and one
component which is the error of that
individual observation.
No.
From this model for the variable,
if we assume that this epsilon IJ are
independent and follow a normal distribution.
The two samples will look like this, so this
is the same figure that we showed before.
We have one method that follows a normal
distribution in another method that
also follows a normal distribution with
different means and different variances.
So. What is the variable right?
So in this case, in the case of the bars,
since we want to measure if one met,
the new method produces steel
rods with smaller cutting error.
The variable that we're going to use is
what we described before the absolute error.
So why is the target the target left
minus the left of the actor bar? OK, so.
Going back to the true normal models.
We can boot,
viewed the hypothesis around the
mean of the absolute error OK,
and in that case,
or no hypothesis is that the difference
of the mean for method one,
method two is 0 or the mean of method
one is equal to mean of method two and
the alternate hypothesis is that the
difference of the mean between method
one and method two is smaller than 0.
OK or bigger than zero active?
There is an error here.
So mean one is smaller than The Chew.
So let's assume for now that the
variance of the process is unknown.
We don't know the various of the normals,
but we know that is the
same for both process.
Well, very close for both process.
If we assume that the various is very,
very close for both process, we can
estimate this variance from the samples.
The formula that we use to ask to
estimate them is this formula and you
don't need to remember this formula,
But you just know.
What you need to remember is that we
are going to estimate the variance for
the various of the model based on the
samples and we are assuming right now
that this various is the same for both OK.
Based on this estimator for the various,
we can calculate the T statistic and
remember we use the T distribution
when we don't know the variance.
So we have to estimate it
from the from the sample.
OK, so our T statistic is exactly like in the
last lecture we have Army which is this case.
Is the difference between the two.
The Chew samples.
This is minus the.
We are the different.
The real difference between the
means that we don't know divided
by the estimate of the error.
And this is will be approximately
distributed following a three
distribution with N1 plus N 2 /,
2 degrees of freedom and N1 and N2 is the
size of the sample for one and for the other.
Now let's go back and remember that our new
hypothesis is that the difference is zero,
and the alternate hypothesis is that
the difference is smaller than zero.
So N one is smaller or difference
is negative.
In this case,
since we're assuming under
the newer hypothesis that the
difference is 0 and we call here.
It's equivalent to what we said.
If this is like here,
the new hypothesis is
that the difference is 0.
So we assume under the new
hypothesis that the difference is 0,
so our statistic or T statistic will be.
The average of 1 sample minus
the average of the second sample
divided by the estimated error.
And that's it.
OK, now we reject the new hypothesis
if R is statistic is smaller than the.
Is smaller than the percentile of
the Alpha value that we selected.
Now remember now that we talk about Alpha,
that should do the experiment.
We need to select three value values with
each select Alpha that we determine directly,
which is the confidence of the test
we need to select better which is
the power of the test, and we need
to select a meaningful difference.
What is the minimum difference that
we are interested for our experiment?
Let's say that for this experiment we
want a traditional nine 5% confidence.
So we select our future.
0.05 and we desire a power of 0.8 OK.
Finally, let's assume that we are
interested that you know differences
between the standard rods and the
actor cut of at least 50 centimeters.
Of course,
these values need to be selected
depending on each particular experiment,
where the requires of the experiment, etc.
But let's assume these
values for our calculations,
so we're going to calculate the
T test using exactly the same.
To test that we use last week,
last last week.
OK, so we read this table this
CSV table with the steel rods data
and we do the test on the left
error depending on the process.
OK,
and when we do that we get our T
statistic minus 14 and that gives
us our P value of 9 -- Y sixteen.
And since we selected or confidence
level should be 0.05,
this value tells us that we
can reject a new hypothesis.
So the two methods are not the same
and the new method has a smaller
cutting error than the old method.
OK,
and we also have our confidence
interval so we know that the
difference in the cutting error.
Is at least 7 centimeters now?
If it's at least 7 centimeters,
there is a chance that it's
possible to imagine that this
difference might actually not be
as big as our desired difference.
In this case,
we would need to calculate also
the power of the test to see
what is the probability that we
would detect the difference.
That is S because we desire.
OK, after we calculate their test,
remember that it's also necessary
to calculate the assumptions of the
test that we're doing in this case,
for two samples, we have three assumptions.
The first one is the normality
of the observations.
They receive those of the observations.
We can calculate a QQ plot between
the standard normal quantiles and
the observations and that will
show us that the observation seems
to be from both samples.
They seem to be approximately normal.
OK. Then for the two samples,
remember that we are assuming that both
samples have about the same variance,
so we need to test that hypothesis.
If they don't have the same various,
we have to change our calculations.
So we test, then we can plot the various.
So as you can see here we are making
a residual plot and the residual
plot shows that the variances
between the two are roughly similar.
We can also do the flinner test if
Linda test result is a hypothesis
test that will tell us if the
variances between two samples can be
assumed to be similar or different,
and in this case we see that
we have a P value of 0.2.
It's very likely that we cannot reject.
The new hypothesis that the variance of
the two samples is the same in this case.
Finally, for independence,
as we mentioned last class,
there is no general test for
the independence assumption.
So what we need to do is that we
need to guarantee how we're going
to make sure that our observations
are independent OK.
Alright, so let's extend a little bit.
What happens if our various is not the same?
Do we need a completely new test?
Actually no, if the variances
of the two are not the same,
we can just modify your test a little bit.
What we do is a modified T test
that is called the Welch T test
where they statistic is calculated.
Like this you see the top is the same.
We are calculating the average between
the difference of the average between
the two samples and what changes is
that we are calculating the error as
a proportion of the error of sample
one and this error of sample 2.
Weighted by the simple size of sample one
and assessable size of of sample two.
Also the degrees of freedom of
our distribution is calculated
slightly different,
so the degree of freedom offer
of 40 distribution will be
calculated using this formula.
You remember the formula.
It's not necessary.
OK, just remember that it's
it's the Welch T test.
If the.
If the variances are not the same.
Actually,
if you're going to calculate this with R,
all that we need to know here is when we
do the test we specify to the function
that the variances are not equal,
then our will automatically use
the correct estimation for the
error and the correct degrees of
freedom for the distribution.
So in this class it's important that
you have an understanding of the.
Of the definitions of the different
tests that we're talking about,
the important points of the
different tests, the equations,
the exact equations are not necessary.
OK, so to summarize this video.
To compare an estimator from
samples of two populations that
follow a normal distribution,
we set our statistic and the
coresponding hypothesis should be the
differences of the target valuables.
This technique is very versatile,
versatile, can use it for many
different experiments, OK.
Of course there are some cases
where this approach does not apply.
You need to test the assumptions if the.
Values are normal.
If the variances are the same.
And as we need to,
as we're going to see in the
next class in the next video,
you need to be careful to make sure
that there is no dependence between
the observations of the two samples.
But that is for the next video.
See you there.
