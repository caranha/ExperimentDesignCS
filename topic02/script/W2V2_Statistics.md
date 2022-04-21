Hello, I'm Claus Aranha at the University of Tsukuba,
and this is Experimental Design for Computer Sciences.
Week 02.

The topic for today's class is "Statistical Indicators"

Imagine that you just finished running an experiment,
and this experiment produced some data.

How can we transform this data into new information about
the world? That is the main topic that we are going
to study today.

Starting from this class, I am going to dive a little into
the mathematics used in experimental analysis. So if you
have any questions about the concepts of this class, write
them down, and bring your questions to the Office Hour.

==

Ok, so last week we talked about what is science,
and how we can use experiments to discover new
information about the world.

Starting from this lecture, we will study how to use
statistics to analyze the data that we get from an
experiment, and how to understand the conclusions
of the experiment.

In this week, I will talk about "Point and Intervals
estimators", and how we can use them to explain
data from an experiment. This is a very basic topic,
but which will be useful for the entire course.

==

Before we begin, I want to explain a little how
I use the word "data" in this course.

In computer science, when I say the word data,
we think of things like the training data set of a
neural network, or like an SQL database, or the log
files of a server.

On the other hand, in this class I use the word data
to talk about something a bit different. Here when I
say data, I want you to understand "the result of an
experiment".

So this "result of an experiment" is the data that
we are going to model and analyze using statistical
techniques.

Of course, these techniques could ALSO be used to
the first kind of data that I mentioned. In fact,
this is done very frequently in Machine Learning.

But be careful to not confuse the two, ok? When I
say the word "data" in this course, I want you to hear
"result of an experiment."

==

Ok, let's start with an example.

We know that Tsukuba University is strong in sports,
but let's say that we are doing an investigation to
learn why.

So the first thing we need to do is to think of
possible questions that we can investigate by an
experiment.

If we imagine that sport performance is related
to physical characteristics of the students,
then what questions can we ask to investigate?

For example, we can ask if universities with
taller students have better Olympic performance.
To answer this question, we would need to gather
information about the height of students and
the Olympic performance of different universities.

A related question would be "Are students in
the university of Tsukuba taller than normal in Japan?".
This seems an easier question to answer. But
how can we define "the representative height of
students in the university of Tsukuba"?

For example, we can choose one student at random
from the university and measure their height.
Is that one student representative for the ENTIRE
university?

==

If we take the height of only one student,
there is a good chance that this one student
is taller than normal, or shorter than normal.
It is very hard for us to know.

So it would be better to take the height of
several students. Let's say 20 students
from the university.

But now I have 20 data points, and what
can I do with this information? And
the question remain, is the information
about 20 students representative
of the entire university? Is it possible
to measure this?

==

Ok, before we start to answer these questions,
let's note that we are starting to
work with some very important concepts
in statistics.

So let me explain to you these concepts:
Population, Observation, and Sample.

So the basic idea of an experiment is to gather
data about a "system", so that we can "characterize"
this system, or in other words, so we can learn
about this system.

These terms, population, observation and sample,
refer to the relationship between this system that
we want to understand, and the data that we obtain
from the experiment.

In this case, the population are all possible values
that could come from the experiment. So if our experiment is
"measure the height of a student", the population is the height of each student in the university.

Note that the population can be a "virtual" set. If our experiment is to run a program and measure the running time of that program, our population are all possible results, all the possible running times. If you think about it, this is an infinite set.

Now, if the population is the set of all possible results,
the observation is one element of this set. So the height
we measure of one student, or the running time we measure
of one execution of the program, would be one observation.

Finally sample. As I said in the last slide, if we measure
the height of a single student, it is not very representative
of the entire university. So usually we want to collect the
data of several observations. This set of observations,
or a subset of the population, is called "sample".

So the goal of our experiment is, we collect a sample,
and by analyzing the observations in this sample, we learn
something about the entire population.

==

So let me repeat this part, because it is very important for the entire course. The objective of an experiment is to learn something about the population, by analyzing the observations in a sample.

So imagine that we have a pool of plastic balls of different colors. And we want to understand this pool better. We could count every single ball, and we would have perfect information. But that would take a lot of work, or, if the pool is really big, it could even be impossible.

So what we do is that we collect a smaller number of balls, and we see what we can learn from this smaller number of balls. For example, we can learn what color are present in the pool, and we can **ESTIMATE** the proportion of colors in the pool, by the proportion of colors in your hand.

But it is important to remember that the balls in your hand is not the entire set of balls in the pool. There will be a difference, and how we deal with this difference is very important.

==

So, when I use information from the sample to understand the population, we say that we are building a *MODEL* of the population, from the sample.

The *MODEL* is a description of how we believe that the population exists.

For example, in the case of the pool of plastic balls, we can say that the balls are equally distributed, so if we pick our sample from this side or that side, we will obtain generally a very similar sample.

Going back to the height of students example, we could for example describe the model "height of students in the university" as the curve of a normal distribution, with a mean value and a standard distribution.

Note that there is of course no rule that says that the university will only accept students if their height obey this curve. But after years of observing natural phenomena, we very frequently observe that variation of natural characteristics follow this curve, so this is a reasonable model to assume in the beginning, if we have no other information.

But after we obtain more information we can, and should, ask ourselves if there is a better model for this population.

Let me give you one more example. The SIR model is a model that describes how a disease spreads between people. So the model divides the people between susceptible, infected and
recovering. The susceptible people become infected with a
fixed probability, the infected become recovering with another probability, etc.

Using this model, we can estimate the progress of a disease.
In this case, we can use experiments to estimate, for a
certain disease, what are these transition probabilities by
checking how many people are in each group in a certain time.

This shows a very common goal for experiments: to determine
the value of parameters of models, and then use these models
to predict something about our world.

==

Let me give you another example of models and parameters.

Let's say that I have a model that describes a certain
species of dinosaur. We can imagine that this species has a minimum length, and a maximum length, and it also has a minimum weight and a maximum weight, etc.

But how can I obtain these values?

We can imagine that archaeologists will dig around and
find fossils, and by measuring these fossils, this gives
them some examples of dinosaurs. From these examples, we can estimate some values for minimum and maximum length, weight, etc.

So if all the fossils that I find are between 6 and 9 meters of length, I could say that for this species of dinossaur, the length is between 6 and 9 meters, and maybe that the average is around 7.5 meters.

So this is how we would build a model from data that we obtain from an experiment.

However, it is very important to note that the parameters that we found for this model are NOT the parameters of the true population of dinosaurs. In fact, we could be very wrong about these maximum and minimum values. For example, maybe very small dinosaurs get eaten and don't leave fossils.

So, for each parameter in this model, there is a true value from the population that we cannot know, and an estimated value, that we calculate from the experiment data.

Our goal when we do an experiment is to calculate an estimated value that is as close as possible to the true value. But never forget that we CANNOT know the true value.

==

So we want to calculate estimates to parameters of a model. To do this, we use "statistics".

A "statistic" is a function that takes in experimental data, and calculate some estimate from that.　A statistic is used
when we want to estimate a parameter for a model from
data that we obtained from an experiment.

Let's go back to the example "I want to measure the running time of a program". One statistic to calculate the representative running time would be the average.

So we run the program several times, write down the observations (the running time of each execution), and we calculate the statistic, that is, the average of the running times.

A few more examples would be the PROPORTION of patients
that got better from a disease after taking a drug,
or the CORRELATION between the size of a neural network
and the accuracy of its result.

==

In today's lecture, we will talk about two types of
statistics.

The Point Estimator calculates *one value* from the
input data, such as the mean, or the maximum, or
the correlation.

The Interval Estimator calculates *a range of values*
from the input data. A classical example is the
confidence interval.

==

One thing that is important to understand about
statistics is that mathematically, they are treated
as random variables.

In other words, to calculate the statistic using
data from the observations. As the observations
are sampled randomly from the population, the
value of the observation is a random variable. This
means that the value of the statistic is also a random
variable.

If you don't remember what a random variable is, I
recommend that you check the first chapter of any
statistic textbook.

But for our course, there are two important things
about random variables that we need to remember:

1- The statistic will have a different value every
time we calculate it for a new experiment.

2- These different values follow some distribution,
that we don't know initially.

In other words, when we calculate a value from a
statistic, this value is not the truth, but an
approximation of the truth. Another way to think
of an statistic is that you are throwing a dart
at your model, and every time, the dart will be a
little bit away from the center, but at a different
position.

==

So if a statistic is a random variable, it means
that it follows some distribution, which we will
call the "sampling distribution".

The sampling distribution is a model that explains
what kind of values we can expect for a statistic
from a certain experiment.

Let me give you a very trivial example, consider
these three statistics: The maximum of a sample,
the mean of a sample, and the minimum of a sample.

The value calculated by these statistics will be different
every time you calculate them for a different sample.
However, we expect the maximum to be bigger than the mean,
and the mean to be bigger than the minimum.

Now, there are more things that we can understand
from the model that explains a statistic. For example, we
can calculate how "rare" or how "surprising"
a certain value should be, based on the distribution.
This calculation is the basis of statistical tests,
that we will talk about next week.

==

And this is where we will end the first video.

To summarize, from the point of view of statistics, the goal of an experiment is to obtain data, and we use this data to calculate the parameters of the model that describe what
we are trying to study.

So if we want to know if the students of Tsukuba are high, we can create a model that describe the height of the students as a normal distribution, and we conduct an experiment to estimate the mean of this distribution. This mean would characterize the height of the students.

In the next two videos, I will give some more details about point estimators and interval estimators. See you there!
