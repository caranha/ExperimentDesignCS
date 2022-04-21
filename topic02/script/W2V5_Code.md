*TODO*


Hello everyone, this is experimental
science for computer science 2021.
Week two, part 5 in this video,
I'm going to briefly show some example code
for the concepts that we saw this week.
I think it's much easier if we try
to execute the functions that the
formulas that we see during the class.
In some example data,
I highly encourage you to download
the files for this video and try
to play with the data yourself.
Maybe load some of your.
On data, calculate some estimators,
calculate some confidence intervals,
make some plots and that will
help you get a better grasp of the
concepts that we talk in class.
So here right now I have our studio.
This is an interface for using
the our language.
Our language is very good for
doing statistical analysis.
I'm not going to talk too much
today about how to program in R.
We're going to have a tutorial
later in the course,
so I'm just going to talk about Chu files.
One for the examples of the cables
and the other for the example
of the student height.
One thing to note is that our
studio at this RMD files they work.
A little bit like a Jupiter notebook.
They are commented code.
You have text in markdown format and you
also have this code blocks inside except it.
Here you write the code blocks OK,
so let me get a little bit closer.
OK, so let's start with the coaxial cable.
I'm going to keep the text.
You can read the text later by yourself,
but here we are generating data.
Now.
Remember that the coaxial
cable was a imaginary example,
so here we are assuming.
That our cable is generated from
the distribution that has mean
50 a normal distribution that has
me 50 and standard deviation two.
So here I'm I'm writing example OK.
So when I execute this code.
I get here my sample and so these
are the cables that I obtained
in my in my experiment,
so I imagine I have like 25 cables
and each of them has some cocoa some.
Some resistance somewhere above 50,
some are below 50,
but they're all around the value of 50.
No, when we get these experimental data,
in reality we don't really know what
is the mean of a revelation, right?
Because we don't have this information,
that information that we want to learn.
So one thing that we can do is that
we can use the point estimator
to try to calculate the mean.
So here we just use we calculated by hand.
So the mean is the sum of the
sample divided by the left.
And in this case,
or simple mean is 50,
so we got a sample mean of 50.37.
OK,
so it's not exactly the same
as the mean of the population,
but we don't expect it to be.
That's what we get when we do experiments.
No, let's say that we want to calculate
the error of the sample like how
much error do we see in the sample?
How much variability do
you see inside the sample?
So that is the standard deviation
of the sample divided by the
square of the sample size.
So the bigger the sample,
the smaller is the sample error.
So if we calculate it here,
we get the date sample sample for our
sample is about 0.5 and we can use this
to calculate the confidence interval.
Now note that the sample error
will get smaller when the
size of the sample increases.
So if we execute this.
So this we have this simple mean error.
That's a function that we're creating here.
And here we have their values.
Now here I'm not using the code here.
I'm doing something cool that you can
do with R markdown that you can write
the code in the middle of the text.
So here I'm going to calculate the
sample in the middle of the text so
I can click this button it here and
create a HTML page. And you can see.
So here is like the cold.
The results they called the results
and in the end I can see here
that for a sample with ten cables,
the sample mean is 49.8 and the sample
mean error is 0.5 with 25 cables.
My sample mean error is 0.43 and
with 50 cables the sample mean error
is 0.24 and we see here that the
sample mean does not really get
that much closer to the true value.
Because our factory is pretty well behaved,
it's a normal is the normal curve
with very low error.
So whatever sample we take,
it's going to be quite close,
but the the bigger the sample they
smaller is the error of the sample.
So, uh, congressman,
this is that one way to make our
estimators more precise is to
increase the size of the sample.
Late in the course,
we're going to talk a little bit more
about how we choose the size of the sample.
OK, the 2nd. Cool, they want to talk
about is the student height analysis.
Now here is a little bit different.
Instead of generating the data randomly,
I'm going to get this student data dot.
Since you have this CSV file that
I'm going to read it, you R and when
I read it I get this data frame.
OK, now one thing that I want to give you.
It's kind of a hint that I want to give to
you when dealing with experimental data.
You can see here that I have a directory
called roll data and my data is inside here.
One thing that you're going to
learn is that when you are analyzing
the data for an experiment,
you usually have to modify.
You have two aggregated data
or maybe separate.
Maybe you want to separate the
female data from the Mail data.
Maybe want to cut that you
change the order of the data.
So we want to do many modifications.
However, it's always important to always
keep your original experimental data.
In my opinion, the easiest way to do
this is to have an experience directory.
I like to call it raw data where you keep the
files that you obtained from your experiment,
and whenever you do some sort of analysis
you read that's a read only directory.
You never write anything into that you read,
you do the process.
You save your process data somewhere else,
maybe in a directory called process data.
Anyway,
so our data.
Here we have the following data.
We have the idea of this student and this
idea is just a number we have the course.
So there are two courses in this data.
We have the Axis engineering systems
and the PPG Electro engineering.
We have the gender so we have in this
data we have male and female students.
We have the height in meters and
we have the weight in kilograms
and we have about 50 students so
we can do a lot of analysis here.
Here we're going to do something very simple.
I recommend that you try to do
other sorts of analysis to learn
how to manipulate data in R,
and also to see what kind of
questions you can make to this data.
So anyway, first, let's do so.
Let's start with something simple.
What is the meaning of the harm
in height and weight of this data?
So we see that the mean height is 1.74,
so that means simple height for this
50 students is 174 centimeters.
And the mean weight is 7/2 kilos.
OK, this is similar to the last file.
Let's say that we were interested
in that BMI of the students.
So the BMI is sometimes used to indicate
the relationship between height and weight,
and it's calculated as weight
divided by height squared and you
can see that we can add later too.
Our market now,
which is super interesting if you
if I mouse over here I can have
how the how the equation looks.
Anyway I calculate the BMI and I
had to be a match the data frame.
So now we have a new column that
has the BMI of these students.
Now, let's say that I want to calculate.
The BMI and get a confidence interval.
So let's calculate and plot the
confidence interval of the PMI.
So first I get the BMI and I put
in a separate variable and I define
my confidence interval.
Here my confidence interval will
be 0.5 my Alpha,
which means that I have a
95% confidence interval.
Now remember that you calculate
the confidence interval.
We have the low boundary and
the high boundary,
and the idea is that the low
boundary of the confidence interval
is the mean of the sample mean that
I am analyzing and then I have.
The quantile that quantile of
the confidence interval and our
degrees of freedom,
that is the size of the sample minus one,
and I multiply that by the standard error
of the values that off my end of my sample.
My sample error divided by the
square length of the value.
So these are in the slide.
You can see this calculations.
This was the circulation that we did
for the confidence interval inside.
So we calculated for the low
boundary and the high boundary.
Can we plot it so if we look
at that so we have here,
these are our values and it's
only ordered by the student ID,
so the X axis doesn't mean anything
and the Y axis means the BMI and
we can see that we have several.
We have one student with very high BMI.
We have a few students with low PMI.
Let's just execute this to make sure
it's correct. There is a problem here.
I did not run this. Now let's try again.
So we can see that have some
students with low BMI.
We have a student with high BMI or.
Average the simple average of the
BMI is a straight line and the 95%
confidence interval are distro dotted line.
Now we don't know what is the
true value of the mihrab,
maybe because we don't have the model.
We only have the sample that we obtained.
So if we estimate that the mean
follows a normal distribution,
what we can say is that this
interval between these two dashed
lines has a 95%
in percent chance to contain.
The true mean. So we have a very
highest chance have very high
probability that the true mean of the
PMI is somewhere in this interval.
Now, let's say that we want to divide this.
What can you use for the for the
confidence interval we can use versus
we can separate the data into male
and female and we can calculate the.
We can calculate the BMI for the
confidence interval for each,
so the red one is the BMI for the
male students and the blue one is
the BMI for the female students.
So we can see here for our first thing
that we notice that we have a much
smaller number of female students,
so that might affect our results.
We can see correspondingly that
the confidence interval for the
female students is bigger than
the confidence interval for the
base students that make sense.
If we have less observations in our sample,
the confidence interval will become bigger,
which means that we have less
confidence about our results.
But even then,
we also see that the confidence
intervals don't overlap.
Now this is a confidence interval,
not a certainty interval.
So or true me might be outside
of the confidence interval.
But from these results we could kinda
as like estimate that the true mean
for the BMI for the male students
is different than the true me.
For the BMI for the female students,
we have some good evidence to talk
about that given this information
that we have here.
If we only had the lines with if we
didn't have the confidence interval,
we wouldn't know how sure we
are of these values,
so that would make it a little bit
difficult for us to draw good conclusions.
Now something a little bit different.
There are other ways to visualize data.
We didn't talk about this in class,
but we can use the histogram to see how
data is distributed on different categories.
And the confidence interval kind assumes
that you have a normally distributed
data and we saw that the CLT tells us
that the mean of the sample will be
normally distributed in most cases.
But when it's not, we can use the box plot.
The box plot does not give us as much
information as the confidence interval,
but it does give a lot of information to us,
like what is the median values?
What are the quantiles, the quartiles?
What are the extremes?
The boxplot is especially useful to show us.
And extreme values in our sample.
OK, I hope you enjoy this and make
sure to take a look at the data
and play will be a little bit with
with it yourself. Have a nice day.
