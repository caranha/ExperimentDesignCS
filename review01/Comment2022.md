Report 01 Review and comments
Claus Aranha
May 12th, 2022
----

Hello Everyone, and thank you for submitting the Report01. I hope you have
enjoyed it.

I have just finished grading all of the reports, and I want to give you
some comments on things that I have noticed. If you have individual questions
about your report, please reach out to me during office hours.

# Grades

The grades and feedback for the report will be in manaba. Also, I have posted
a CSV file with anonymous grades, in case someone wants to do something cool
with that data.

# Favorite reports:

Some of my favorite reports this time:

## Micro-oven report:

One student wanted to see if a micro oven that says "600W" really heats
the food with 600W. So the student tried to head a cup of water several
times, and measure the difference of temperature to calculate the
wattage.

This experiment was very simple, but at the same time it is exactly the idea
of experiment that I was expecting for this class. Something that is useful
and can be concretely measured, but you still have to take care and handle
several errors that can happen in the experiment.

The student noted down, for each observation, things that happened out of
the ordinary, such as if the water was a different temperature than usual,
or if something broke.

## 1-channel vs 3-channel test.

One student proposed to study the difference of using 1 color channel vs
3 color channels in machine learning, when processing grayscale images.
This is an interesting experiment, because the motivation that the student
described: Everyone says to use 3 channels, but I wonder if it would not
be able to use only one channel.

## Shirt Drying comparison.

One student proposed to compare the speed that their shirts dried in several
different locations in their apartment. They compared the varanda,
bathroom and living room, as well as difference of temperature and humidity,
and several other factors.

This experiment was really nice because it was a concrete experiment, with
useful conclusions. The student measured not only which one dried faster,
but where the drying was most consistent.

# General Comments about the reports:

## Importance of the introduction and conclusion

I would like everyone in the future to think about the introduction and
conclusion of their reports. Being able to explain what is your experiment,
what you tried to do, and how much did you achieve is very important.

Regarding the introduction, you should concentrating in explaining what is
the question that you are trying to answer, and why that answer is important.
This importance can be just a curiosity, or maybe it affects something in your
life. Also, you need to explain why the experiment is necessary, in other
words, why it is not trivial to answer this question (more about trivial
  experiments later).

Regarding the conclusion, you should concentrate on not only showing your
result, but also making an interpretation of your result. Why do you
think this result happened? What is the implication of this result?
Does the result suggest other experiments? Or does the result suggest
a change in your lifestyle?

## Choosing Factors

As we talked in class, "Factors" are the different things that can affect
the result of your experiment. A factor can be something concrete, like
the size of the data, or the algorithm that you choose. A factor can also be
something more ambiguous, like the age of the people you choose for the
experiment, or if it is morning or evening, or if it is raining outside.

If you don't think about your factors, there is a chance that some factor can
cause large variation in the result of your experiment, and cause the
experiment to not be very useful.

For example, one experiment wanted to measure the temperature of Tsukuba in
April, from 1921 to 2022. This was a good idea. However, the experiment
considered the average temperature to be the representative temperature in
Tsukuba.

Can you see why this is a problem? The temperature is affected by many factors,
and one of the factors is a linear increase in world temperature in the past
100 years. So the average temperature in Tsukuba is different 50 years ago
than it is now.

If you don't think about this factor, your experiment will give you a result
that does not make a lot of sense.

## Necessity of Being Critical and Honest

A related topic to factors is the necessity of being critical and honest
when you analyze the result of an experiment.

In general, if you ask a question to an experiment, you expect two answers.
For example, "yes" or "no". Unfortunately, there is another answer that can
come from an experiment: "This experiment is not able to answer that question".

This happens when you choose the wrong experiment to answer a question,
or the wrong estimator, or the wrong factors. In the end, the result of the
experiment gives you some information that does not answer your question at all.

So you need to ask yourself: Did this result answer my question? If not, why?
Did I choose the wrong estimator? Is my question not very well defined?

You need to be honest when you realize that your experiment was not chosen
correctly. If you try to give meaning to an experiment that does not have
a meaning, you are only wasting your own time.

On the other hand, if you realize that your experiment did not give you a
useful result, you should not say "oh, this did not work" and stop there.
You need to reflect on what happened, and understand why the experiment did not
work out, and what was missing. What do you need to do for the experiment
to work next time?

## Trivial Experiments

A few students used very trivial experiments, such as:
- "Is quicksort faster than bubblesort"?
- "Analyze benchmark data that is available on R"

The goal of the report was not only to calculate confidence intervals
(even though that is important), but also to think about how to choose an
experiment to answer a scientific question, how to deal with problems such
as factors, etc. By choosing a trivial experiment, you are skipping that
part of the assignment.

I think many of you know that to learn programming, it is not enough to
only read about programs. You won't learn to program if you don't write some
programs yourself. In the same vein, you will not learn to do experiments
if you don't prepare some experiments yourself.

## Likert Data

A few students used experiments with LIKERT data. LIKERT data is common enough
that it is worth talking a bit about it (we will talk more about it in a future
  lecture).

LIKERT Data is usually found in surveys. It is the data that is produced by
questions such as the following:

Do you think Interface A is easier to use than Interface B?
1. Agree Strongly, 2. Agree, 3. Neutral, 4. Disagree, 5. Disagree Strongly

In this case, the data is stored in a file as "1-5", but it is not a good idea
to calculate a mean or a confidence interval of this data. Why?

Well, although the data is numeric, if you pay attention, you will realize
that it does not make sense to perform algebra in this data. For example,
is the difference between "Strongly Agree" and "Agree" the same difference
between "Agree" and "Neutral"? You can see that this question is difficult to
answer. So adding an array of "5,3,4,3,5,1,2,3", may result in a number that
does not make a lot of sense.

In this case, it is better to use non-parametric statistics, such as the
median, the mode, boxplots and quantiles/percentiles.

## Replication

Some students had questions about replication. They were worried that data
used in a Neural network was too big to submit as replication data in Manaba.

There are different levels of Replication, and the nomenclature for these
different kinds of replication is not quite well defined yet:

- Experiment Replication:
  You provide all the data necessary to execute exactly the same experiment,
  under the exact same conditions. The goal of this replication is to verify
  that you are honest about your results, that if the experiment is executed
  in identical conditions, the exact same observations are produced.

- Experiment Reproduction:
  You provide a detailed description of how to perform the experiment,
  so that other people can perform the same experiment, in similar (but not
  identical) conditions. The goal of this reproduction is to verify that
  the experimental results are consistent, even if a few factors are modified.

- Analysis Replication:
  You provide your raw data (observations) and the methods used to perform
  the analysis of the experiment (statistical analysis, generation of images).
  The goal of this replication is to check it there are no errors
  (such as cherry picking, or other calculation errors) in your results, or
  if there are other possible interpretations of the data.

For this report, I was aiming at the 3rd replication type, but of course,
if you provided the first or the second replication type, it was accepted.
