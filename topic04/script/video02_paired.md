Hello everyone, this is experiment
design in computer science is week four
comparison test Part 2 pair testing.
Let's get stranger it.
So in the last video we studied how
to apply the statistical inference
method using hypothesis testing
when we want to compare two samples,
let's say meta, A and method B,
and we saw that we can do that using the
same T test that we used in the first week.
Now in this video I'm going to show you
a special situation that is very common,
but it can change your results very much.
So you need to be careful about it.
OK. So the idea is bear design,
so pair design happens when you have an
experiment where observations are LinkedIn.
A sample one and sample two
and they have strong defenses.
One example that I like a lot
is football shoes.
Let's say that you want to
try to football shoes.
OK, there is an old one that you
always that your team always used,
and there's a new one that you think
that the new one will have will.
To take more time to wear out.
So what do you do?
You buy shoes for their entire
team of Brand One and Brand 2 and
you give the shoes for your team
to play for one game on Brand One.
And then you give the shoes for your
team to play for another game in Brand
2 and you measure the shoes to see
how much they how much they were out.
OK, now.
What happens? The problem is that if you just
measure the difference of the wearing out.
You gonna see that maybe the shoes
that were world. That may be the
shoes that the goalkeeper was using.
They did not wear out a lot because
the goalkeeper does not move a lot,
but the shoes that the attackers were using.
We do will wear out a lot
because they're running a lot.
They choose that the midfielders are using.
They were going to be there were out
most of all because they're running
all the time during the match.
OK, so there is a difference
about how much it should wear out.
That is just not because of
the difference of the brand,
but it's also the difference
between who is using that shoe.
So that's one example of
observations that are paired.
Let's give a second
experiment a second example.
Imagine that you want to
compare the gasoline of a car.
So you have a common gasoline,
and you have like a special gasoline
that is more efficient than common one.
OK,
so to do that you get several cars
and you test the gasoline on the cars
and the way that you test is that you
fill the tank of a car with gasoline.
And you drive that car until the
tank is empty and then you measure
how many kilometers that car drove.
Now, if the gasoline is more efficient,
the car will drive more further away.
However,
different types of cars have
different gasoline usage is right.
They have different efficiencies
of the Motors,
so if it's a very big car then
it uses gasoline very fast.
If it's a very small car,
maybe it's economical and does
not use gasoline so fast,
so the difference in the amount of
the car drove is not only because
of the type of the gasoline is also
because of the type of the car.
The second example is.
Actually very interesting because
maybe you can think well why
don't we just use 10 cars of the
same type and you Q to use that?
If that was the goal of your experiment,
let's say that you are a taxi company,
then all your taxes are the same kind of car,
and that's OK.
You use the same card kind of car.
You don't have to worry about
their experiments anymore.
But let's say that you are the
company that is producing the fuel.
In that case you are.
Interested in how your few behave in
different types of cars so you want
to use this theory genius experiment?
You want to use your experiment.
Different kind of cars,
so you need to do the pairing.
Now let's think about an example that
is very common for computer science.
The comparison of two methods.
Here, I'm going to talk about
two optimization methods,
but I'm pretty sure that you can think
of other situations that are similar.
So let's say that our researcher
develops a new optimization algorithm,
A and algorithm,
and they want to compare this convergence
against a method that represents the
start of the state of the art method B,
the baseball algorithm.
OK, so the researcher believes
that the proposed algorithm has a
theoretical advantage on a specific
family of optimization problems.
This is very important.
This is not really related to the topic,
but this is very,
very important for experiments.
Before you do an experiment.
Try to think what is the
theoretical reasoning for that
experiment to give some result.
Don't just oh,
here's a new method I'm
going to do an experiment.
First,
think about what's the theoretical
reason that your method would
show a different result.
Anyway,
the researcher got a specific
family of optimization problems and
compare the two methods they sell.
She selects a benchmark of
problems from that family.
Now,
both methods method A and method
B are executed on the problems
of the benchmark problem.
One problem, two problem,
three, problem four,
and she measures the time that the
algorithm took to converge on each problem.
The measurements are made
under similar conditions,
so it's the same computer with the
same operating conditions etc etc.
No,
in this example we are taking
several problem instances and we're
running each of the geography
them in all of the instances.
The instances are different,
so there will be a variation
in running time OK.
Also, as we said before,
just when you run a program in a computer,
there will be a variation in
the running time as well.
So to reduce this variation on the
running time every time first is
when you will run algorithm A on
problem one we want to run algorithm
A on problem one a few times,
let's say five times or 10 times to
get the average time of algorithm
A on problem one and then we get
the average time of algorithm.
A on problem two and then we get
the average time or algorithm A or
problem three and so on and so forth.
OK, now just like in the last video,
think about the following
questions and pause the video.
We're going to answer this questions,
but post a video to check your
answers before we continue.
So question number one.
What is the estimator that we're going
to use to measure in this experiment?
What are we measuring here to
compare algorithm a an algorithm
B on all of these problems?
OK, now. What is 1 observation?
Notice that we are running
one method in 111 algorithm.
In one problem many times is 1 observation.
One of these times that
we are running the method
of the algorithm.
Or is it something else?
OK, what is the sample size?
If we run, let's say two algorithms
on 10 problems and for each problem
we run the algorithms five times,
which is the sample size here?
Tickle it about this the difference
between running the algorithm was someone
problem and the average performance of
1 algorithm in one problem and then
think about the answer to this questions.
OK, let's continue. OK, so.
Why is sparing necessary?
OK, so when we consider observations
with strong dependencies,
for instance,
for example players or car types
or benchmark problems.
The difference between the observations
is a strong source of variation.
So as we talked before,
when we do experiments,
there are many sources of variation.
There is random variation.
There is variation because of the
different methods that we're using,
and in this case there is also variation,
becauses of the different players,
the different card types,
the different benchmark problems.
This variation of players,
car types or problems they're not related
to the question that we're asking.
What is the difference between
method A and method B?
So we need to control this various so
this various does not affect our results.
There is one solution for that
that is very elegant, very simple,
which is to pair the measurements.
So what does do it?
It needs 2 steps.
Step one,
we consider the observations in pairs AB.
For each problem.
OK, so we have one pair a on
problem one be on problem one,
then the second pair.
A young problem Trubion problem 2 then
we have the third pair a on problem B,
Bayonne problem three beyond
problem three etc.
When we have these spares,
the hypothesis testing is done
on the difference of the pairs.
Remember that last video?
The difference was the difference
on the average.
We've got the average of sample
one and the average of simple two,
and we calculated the difference
of these averages.
Here we calculating the difference
of the pairs. It may.
It may seem that these two are
the same thing,
but they are very different OK?
So let's look at the statistical model first.
So let's say that YAJ&YBJ.
They are the pair observations
of the average time for methods
A&B for a specific problem J.
So the pair difference OK,
the difference of a pair will be DJ,
which is why I J minus YBJ.
If we go back to the.
Idea of an addition model.
The addition model is YIJ is MU
plus Tau I plus BJ plus epsilon ijk.
Now this view is the general mean.
It's the mean if we ignore all
the possible is the mean of the
entire experiment.
If we ignore all the possible variations.
This to I is the variation that is
caused by the difference in method.
This better J is the variation
that is caused by the difference
in algorithm problem and this
epsilon is all
the other sources of variation
that we cannot control,
such as variation in the computer
variation in random numbers etc. So.
What we do is that DJ, as we said before,
is YH a -- Y PJ so this and when we
calculate this YIJ we substitute in
this equation is MU plus T to A+B,
J plus epsilon AJ minus MU Taubman BG.
We can cut MU and MU here and we get
better and better here and we're going
to have to weigh minus 2B and this
will be the mean of the difference.
This will be muti.
So when we subtract.
Why when we pair the observations,
what we're doing is that we're
canceling the error of the problem
because the error of the problem
will be the same for both and
we're canceling the grand mean.
So we just consider now by
doing this pairing,
we just consider the mean of the differences.
In this case, because we're working
with the mean of the pair differences
or new hypothesis now is exactly the
same as we did on the last video.
The new hypothesis that the
means of the difference is 0.
The alternate hypothesis is that the
mean of the difference is not zero.
So now we're back to our simple hypothesis
test and everything from now on is
exactly the same as the last video.
So RT statistic is this difference.
This estimated difference.
Divided by the error of the
estimated difference.
So we consider the difference
of pairs as one sample,
and we calculate the error of that
sample divided by the number of pairs.
OK, So what this means is that for this
experiment or simple is the pair of of.
Observe the pair of observations in
a problem. OK, so each observation.
So each pair of problems.
East one observations note here that we
are completely ignoring the repetitions.
The goal of doing individual repetitions on
a problem like running five types problem,
one on algorithme and running five times.
Problem 2 on algorithm A and
running five times.
Program three.
An algorithm to a this five times.
The only objective for that is
to reduce the randomness of the
computer and the rental numbers, etc.
But we ignored them during
their statistical test.
We just consider the average time of method.
A problem one average time of method
a problem 2 average time of method be
problem one average time of method
be problem two and one observation
for this test is the difference
of the average time of method A
for problem one and the average
time of method before problem one.
That is one observation for the pair test.
Some other considerations.
OK, you also things to remember in this room.
In this example, the minimal interesting
effect size Delta is expressed in terms
of average time gains across problem,
not for individual problems,
but for all problems because
we're doing a comparison among
among many different problems.
Because of this is usually better to
explain express the minimum difference
in relative terms, not in absolute.
Terms in the case of the steroids,
the effect is still factory well
because we have one target size,
we can have one target difference,
but because of our algorithms have
very different running times.
Instead of saying oh I want
a difference of five seconds,
it's better to say something
like over the minimum difference
of running time of 5% or 10%.
Because what is 5% for problem
one may be very different of what
is 5% for problem five or four?
Problem 10 OK.
So the sample size considering
this situation,
is the number of problems.
So for comparison of different problems is
important to consider the number of problems.
OK,
not the number of repetitions.
If you increase the number of repetitions,
you're not making your test stronger.
If you increase the number of problems
you're making your test stronger.
The number of repetitions will
have an impact,
of course,
because it's the IT reduces the noise
associated with the running environment,
but not with the difference
of the methods itself.
A few extra observations. So.
Just summarize depere design.
We remove effects of
controllable nuisance factors.
So for instance, the error of the
computer is not controllable.
It's very hard to control the
error from the rental numbers,
but the error of the tests you choose,
the benchmark tests.
It's controllable,
so you can remove it using pair testing,
so it's strongly indicated to use their
testing with problems where we have
strong correlation between samples.
Now let's look at some numbers
to make it more concrete.
So let's go back to our.
Comparing to your example of
comparing two algorithms.
OK, so let's say that we choose a
benchmark set set with seven problems.
So we have two algorithms and seven problems.
OK, now the researcher wants to find
the differences in the mean time to
converge that are greater than 10 seconds.
OK, during this time we're using
10 seconds with a power of at
least one minus Bettasso 0.8.
And the significance level of
0.05095 confidence confidence level.
Now we use 30 repeated runs for
each pair of algorithm problem.
OK, this is just there's no particular
reason for this number you could do like
a pre test to see how many you need,
but sometimes you have a reviewer
that loves the number 30 for reasons
that we will explain in the future.
Anyway. So let's see what the data is.
So we get this data.
We did a simulation of two algorithms
running a different problems and you
can see here that we have problem.
One problem, two problem,
three, problem four,
problem 5 algorithm a algorithm be over to my
algorithm be now pay attention to this table.
You can see here that in all pairs.
Algorithm A always runs
faster than algorithm B.
The time for algorithm A is always
smaller than the time for algorithm B.
However.
The time of the problem is even bigger,
the difference.
So for instance,
for problem one we have 30 and 50 seconds
for problem seven we have 300 seconds.
So the difference of time between
problems is much bigger than the
difference of time between algorithms.
OK, you can see this in this graphic.
So this true.
The first dot is the problem,
a the second dot.
The first notice method,
a II dots method B,
and each level here is a different problem.
OK.
So how do we do the paired analysis?
To do the paired analysis again,
we just need to set up the
correct configuration of the test,
and this is something that I
recommend to you if you don't use R.
If you some other tool like Excel
or Python or anything else to
Calculator statistical tests,
read the manual,
learn what are the options to do pair
test to do test with known variance
to the test with unknown variance as
we're going to see here in a few seconds,
the difference between a fair test
and an unfair test is very big.
I had a student.
That was submitting a paper that the
results were extremely bad and the
results were bad because they shouldn't
forgot to set the correct option for
pair testing in this statistical analysis.
OK, so pay attention to these differences.
Anyway, when we do the protest,
we see that the T variable is minus 9,
so that gives us a P value of 0.05.
So we see that it's a very
significant difference.
We've got a degree field of 6
because we have seven tests, OK,
and the average the confidence
interval for the true true difference
between the methods is between minus
20 seconds and minus 12 seconds.
So this is even lower than
our requested of 10 values.
So we want the 10 seconds of difference.
The difference between our methods
is between manage 20 and minus 12.
On average,
the difference was minus 17.
Another way to calculate this, remember that.
The paired test is a 1 sample test on
the difference of the observations
of the Perry observations.
So what we can do is that we can
calculate a single array there is.
The time the observations of the first method
and the observations of the second method.
So this array will have the paired
observationes and we do a single a single
a single sample T test on this array,
we're going to get exactly the same result.
Why think?
A little bit about why the result
of this is exactly the same of this.
OK, this will test your knowledge
about if you really understand
how we're doing the protesting.
OK, let's move on.
Of course, after you finish the testing,
you need to check the assumptions.
In the case of the paired testing depressed,
the main assumptions are the assumptions for
normality and the assumption of independence.
As we said before, there's no real test
for the assumption of independence,
so we've got to just do the
assumption of normality here.
So here we do a QQ plot and we can
see here that most of our observations
follow a normal distribution,
but we have one here that
is very very different.
This one is an outlier.
So what do we do?
This is why we need to do
these assumptions here.
Just because we have one outlier,
it doesn't mean the test is invalid
because if we remove the outlier,
we're going to see that all the tests,
all their other observations.
They follow the normal curve.
So what we do in this case is that we take
this outlier and we look at what's going on.
This is one problem that I see students
do all the time when they do experiments,
they run an experiment on 30 benchmarks,
40 data tests,
1000 images.
They just look at the aggregate
data and of course the aggregate
data will give your final result.
But when you're doing the experiment,
you need to see all there is an outlier.
Let's see what this outlier
is because that will show you.
Some very, very interesting things.
Maybe your outlier is a special
condition that you did not think before.
Maybe art lawyer is a bug on their
code that is adding data that
should not be in your experiment
and by checking your outlier you
can find some bugs in your code
that you were not realized.
So do this analysis of conditions.
Check your outliers OK?
I had another student of my laboratory.
They were doing an experiment
that it performed very well in
the first thirty observations and
the last 10 observations they had
like a time they they had.
They were outliers and just looking
at the overall results they were
kind of OK but not very good.
But when we look at the outlier
we found out why our method was
performing worse at them and then we
could improve the method to include
the problems that were happening.
The outliers.
So don't work only with average
performance average.
Average efficacy average time.
Take a look at the individual
values of your experiments.
OK,
going back.
What would happen if we ignored the
dependency between the observations?
What would happen if we did not do pairing?
So here we are doing the T test
of the two methods on the seven
problems without pair unpaired T
test and what you can see here is
that or T statistic is minus 0.3.
This is way in the middle or P value.
Here is 0.7.
It's right in the middle of the
new hypothesis.
So if we do the unpaired T test on a
paired experiment.
We will not dirty test.
We say no. No hypothesis fine,
nothing to reject here. Why?
This happens becauses the difference
between the problems is bigger than
the difference between the methods.
So the difference between the problems
hide the difference between the methods.
So here we have a visualization.
OK, here's the data of the experiment.
The red data is method A.
The blue data is method B,
and as you can see, the difference
between the methods is much smaller than
the difference between the problems.
When we look here,
it's very clear why we cannot reject the
new hypothesis in the unpaired test.
This is because if we don't
consider the problem,
the two methods have about the
same at the same performance.
OK, so This is why pairing is important.
On the other hand.
You also should not use pairing
when your experiment is not paired.
If there is no pairing here
and you do pairing,
you're going to reject a new
hypothesis when you should not.
Why, because you could select the
exact pairing that will remove all of
the differences that that will create
an artificial difference between your pairs.
So don't use pairing if your
experiment is not paired.
But if your experiment is spared.
Don't forget to use bearing OK.
Alright,
this is the end for video #2.
Sorry for the video,
that's a little bit longer than normal.
I hope that you enjoyed it and in the next
video we're going to look at comments.
Talk about the report, etc.
See you there.
