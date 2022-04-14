Hello Everyone, I'm Claus Aranha
at the University of Tsukuba, and this is
"Experiment Design for Computer Science".

In this video, I want to talk about
experiments, which we usually see
as something central to science.

So Let's go.

==

Last video, I introduced to you a dynamic
framework to understand science.

If you remember, in the center of that framework
we had the area for experimentation, which
is how collect data to better understand
our scientific ideas.

So in this video, I'm going to talk a bit about
what is an experiment, and how we should think
about it.

==

This idea of discussing what is science, what
is an experiment, what is knowledge, is the
domain of the Philosophy of Science.

So we are doing philosophy now, sorry Neil
DeGrasse Tyson.

So in the philosophy of science we are
interested in discussing how we can know things
about the world. Can we learn things
by only using logic, or is something else necessary?

One of the lines of thoughts in the philosophy
of science that interests us in this course are
the ideas proposed by Carl Popper.

Popper proposed the idea of "Experimentalism",
which is one idea that defines *scientific* knowledge
as knowledge which is obtained by systematic
and rigorous observation of the world.

According to Popper, rigorous observation of the
world required a very specific set of steps,
that is what we usually think of when we
talk about the "scientific method".

So the idea of a rigorous experiment according to
Popper is that we formulate our question as a
scientific hypothesis, and then we can execute
an experiment to try and reject that hypothesis.

Now, the definition of a scientific hypothesis here
is very important. One of the key ideas of
a scientific hypothesis is that it is "falsifiable".

This means that it should be possible, for any
scientific hypothesis, to describe an experiment that
its result could be used to reject that hypothesis.

If it is not possible to think of a situation where you
would have to reject your hypothesis, then
your experiment is not scientific, according to Popper.

==

So for example, Popper lived at a time when Psychoanalysis,
proposed by Freud, was really popular. And according to
Popper, psychoanalysis was not a science, because it was not
possible to describe an experiment that could prove the
theories of psychoanalysis to be wrong.

Of course, people who studied psychoanalysis disagreed
with Popper, but I would say that the description of
Popper of a scientific experiment is very useful for
us to describe rigorous research.

The idea of a falsifiable hypothesis is a very good one,
because it limits us to what we can use as initial ideas
and it guides us to what sort of experiments are useful.

If a scientific hypothesis is falsifiable, this means that
our goal should be to try and falsify the hypothesis, to
show that it is a strong hypothesis, or to learn something new.

In fact, this is a very important part of the Popperian line of
thought, the idea that you learn more by being wrong, than by
being right. Falsifying a hypothesis gives us more information
about the world, than just confirming what we already knew.

==

Anyway, I want to extend the idea of a falsifiable hypothesis
to the idea of a "Fair" experiment. Here, the idea of a fair
experiment is an experiment that gives us the best chance
to reach at some true knowledge.

I say "fair", because the idea is that we are not trying to
force a specific result, but really trying to honestly learn
more about the world. So what makes a fair experiment?

==

The first point that I want to talk about is
"Providing something to compare against".

This is related to the idea that a scientific experiment
can be "Falsifiable".

What does this mean? This mean that a scientific experiment
needs at least two possible results. Because, if you know
the result of your experiment before you begin, then
you do not learn anything from the experiment, right?

So let's think of some examples of "comparisons".

We can think of the comparison of two different systems,
such as, do chocolate cookies taste better or worse than
mint cookies? And we can do an experiment to compare these two.

Or we can think about different ways to explain a phenomena.
For example, we know that sometimes bananas turn black
in a refrigerator, and we have two explanations: It could be
because of bacteria growing on the banana, or it could be
because of the temperature of the refrigerator. So we can
make an experiment to test which of these explanations is true.

Another way to think about "something to compare against" is
an experiment to test the characteristics of a system that
we want to study. This is good for specially for engineering.

So, for example, we want to feed a family based only on apples,
so we need to know how many apples a tree produces in
one year, so we can calculate if this value is enough to
feed the family.

In all these examples, it is important that we establish
the different, possible results of our experiment.

==

Continuing with this line of thought, when we are defining
our scientific hypothesis, we want to make it as
specific as possible.

If the hypothesis is very specific, it will make it easier for
us to determine the possible outcomes of an experiment.

On the other hand, if the hypothesis, in other words, if
the question that we are trying to answer in our experiment,
is too vague, it makes it harder to design, and then to analyze
the experiment.

So let's look at this example. Imagine a person researching
a new optimization method. Now, a very bad way to create a
hypothesis in this research would be to say:

"My hypothesis is that my optimization method is the best".

Why this is bad? Well, we are not comparing to anything concrete.
Also, what does the word "best" means in this context?

So this example is a bit extreme. What we actually see in papers
is something like "The proposed method is better than existing methods".

But I still think that this is not specific enough to be useful.
What are the existing methods that we are talking about? There are so many of them in the world. Are we talking about ALL of them?

So we specify it a little more. "Using Polynomial mutation is better than Gaussian mutation". Now we know which methods we are comparing against each other. But this is not yet falsifiable! Because of this little tricky word here, "better".

Better could mean anything, so it is not a very good word to use in scientific hypothesis. It could mean faster, it could mean more precise, it could mean more elegant, it could mean anything. So it is hard to create an experiment that completely falsifies "better".

So to arrive at the end of this example, we have this final version of this hypothesis: "Polinomial Mutation increases the convergence rate of an optimization method, when compared to gaussian mutation". This is much better, when we look at this sentence, it is easy to imagine what would be an experiment that the result would be either "yes this is true", or "no this is false".

Now, we could make this a bit more specific by saying exactly how much we expect the convergence rate to improve, but I think you got the idea I wanted to tell you. Be as specific as you can.

==

So to summarize this point, and remember, here we are talking about
Carl Popper's philosophy of science, a good scientific hypothesis
is one that is "falsifiable". In other words, it is possible to imagine and execute an experiment that could reveal to us if the hypothesis is false.

In computer science, it is unfortunately very common for people to discuss problems in terms that are not falsifiable. This usually happens when we are talking about systems that could always be improved, could always be hacked to become a little better.

So for example, on researcher proposes a method in computer science, and this method has many parameters, and can be applied to many problems. If you are not careful, it can become very hard to do meaningful experiments for this method. Like in this first example.

What we want to do, is to always be very specific about the goals of our research: What conditions, what parameters, what problems, and what measures define success or failure in our research proposals.

Of course, I understand that one of the reasons that this happen, is because failure in science is very scary. We want our experiment to "succeed", because we think that if the experiment did not succeed, then the science had no meaning. But I want to help you understand that even when the experiment does not succeed, we are still learning, and this is important. Explaining WHY an idea did not succeed can be even more important than doing an experiment that gives us exactly the result that we expected.

==

Ok, now let's talk a little bit about a different topic,
how we control the variables of a scientific experiment.

When we design an experiment to answer a scientific question,
we need to think about what are the variables that could
change the result of the experiment.

So for example, let's say we are doing an experiment to determine
which one taste better, chocolate or coffee. The results of
this experiment would be different if we asked small children,
and if we asked PhD students.

So when doing our experiment, we would need to CONTROL the variable
of who we are talking too. But also other variables, such as
the brand of chocolate and coffee, the temperature, how we
ask the questions, etc.

But depending on the experiment, it can be easier or harder to
control these variables. So we can think about three kinds of
experiments depending on how much control we have over the variables
of the experiment: Observational Experiments, Retrospective
Experiments, and Controlled Experiments;

==

Observational Experiments are experiments where you
observe a phenomenom without interacting with it directly.

For example, we can imagine an experiment in astronomy,
where we observe the light of a distant star. There is not
much that we can do to change this light right? We can
choose which days we observe, and what kind of equipment we
use, but that is about it.

Another example would be counting the number of people
that are using masks in the train. We can choose to count
this number in different cities, for example.

So the variables we control in an observational experiment
are how we observe the data. So we need to be careful
that we are observing all the representative situations.

For example, in the train mask experiment, if we do not
observe during the rush hour, we may miss a lot of information.

Or maybe we are interested in learning about what kind of people
use colorful masks, but if we do not observe for many and many days,
we might not get enough data to make interesting conclusions.

==

Another class of experiment, when thinking about data gathering,
are the retrospective experiments.

Here, instead of observing an event as it happens, we will
obtain data that was recorded about this event in the past.

For example, we are interested in learning more about marriages.
If we did an observational experiment, it would take a very long
time to gather the data. So what we could do is to go to the
city office, and gather data from past marriages.

So we could, for example, try to find out if there was a day in the
week when marriages are more common.

Let me share one example of retrospective experiment that I think
was really cool. So there is this temple in Japan near a lake that
freezes in winter. And every year when the lake unfreezes, they
hold a festival.

So a group of researchers took the dates of when the festival
was held, and plotted it over time, to measure the
amount of climate change in that region over the years. And you can
see clearly the date of the festival changing over time.

Anyway, retrospective experiments are usually cheaper, since the data
has already been collected, you just need to find it. On the other hand, you don't have as much control over the data as you have in the observational experiment.

In fact, you need to be very careful about biases in data registration, and missing records. For example, in the lake festival experiment that I mentioned above, there was a big chunk of data missing during the world wars, and also in one period of time when there was an internal dispute in the temple.

So that is one thing to think about in this kind of experiment.

==

Finally, we have Controlled experiments, and this
is the kind of experiment that you usually think of, when
you are a computer science student.

This is the experiment where you can control all the aspects
of the experiment. For example, you are comparing two
sorting algorithms, so you can choose the algorithms, how much data they will sort, what kind of data they will sort, what kind of computer the algorithms will run on, how many times you will
repeat the experiment, everything.

So this gives you a lot of power. But as we all know, with great
power comes great responsibility. It is very easy for a researcher
to introduce biases into a controlled experiment, even by mistake.
For example, you can choose conditions so that it is impossible for a experiment to produce a negative result. When comparing algorithms, you can chose a data set that always favor algorithm A over B, by mistake, so we need to be careful about that.

Another problem with controlled experiments is that they may have a heavy cost. This is not always true in Computer Science, because computer simulations are usually cheap, but this has started to change in recent years.

==

So let's talk a little bit more about inducing biases
in an experiment.

Like I said, when you control the parameters of an experiment,
and of course this happens in controlled experiments,
but this can happen in observational experiments as well,
we need to be careful to not introduce biases in the experiment.

For example, if we want to compare the speed of two algorithms,
but if we run both algorithms in a very powerful computer, with little data, it may become hard to see this difference.

So in this case, we would like to think about the execution environment
to be able to clearly see the difference of the algorithms. But we
also want to make sure that the environment is similar to the
the environment where we normally use these algorithms. So there
are many possible choices, that depend on the final objective of the experiment.

Making these choices is one of the main tasks of Experiment Design.

==

Here are some common experiment design questions:

- Which methods do we choose to compare?
- Which data sets?
- If we have participants, how many times do we interview each?
- In what order do we perform the experiments?

The order can be surprisingly important. Let's think of a trivial
example. If we are comparing algorithms to process large amounts
of data, their speed can chance if the data is cached or not,
so the order of the algorithm has an effect on the result.

And you can see that there are many other choices, it would be
impossible to list every possible choice that you can make in
an experiment.

But the key idea is for you to think carefully about
what factors in your experiment can influence the results, and
then think about how you would design the experiment to
minimize that influence, or maybe neutralize that influence.

==

We are going to be talking about this more during the course,
but let me give you one concrete example.

Let's say that we are comparing the running time of two
computer programs.

We know that the running time of a program is not constant.
If you ever tried to measure the running time of a program,
you may have noticed that the time change a little
bit every time that you run the program.

Some things that affect is how many programs are running in
your computer, or the amount of memory and power that you
computer have.

Some of these factors you can control. For example, you can use
the exactly same computer for both programs.

But there are also factors that you cannot control. For example, modern operating systems run several programs that you can't really control. If you are unlucky, then maybe the defragmentation
program will run at the same time as your experiment, and
affect your results. How do you prevent that?

One way would be to repeat the experiments many times and
take the average result. It is important to understand that
"repeating many times and taking the average" is a technique
with the objective of reducing the influence of these
random factors that we can't control. But even then, we still
need to understand what these noise factors COULD be.

==

Let's discuss a second example of using experiment design
to control parameters. This time our experiment uses humans.

Imagine that you are doing an experiment to compare the
design of two websites. This is done very often in industry,
and called A/B testing.

Anyway, you have two websites, maybe one that uses images, and
one that does not uses images. And you want to know which design
is easier for users to find information.

So you prepare an experiment, where the user has to find
some information in webside A, and has to find the same information
in website B.

Can you guess what is the problem with this design?

If we always do the experiment in the same order: first website
A, and then website B, then what can happen is that
when the human is using website A, they are still lost, maybe
they don't know exactly what they need to do. But when they
use website B, they already feel confident about the task, and
have a small advantage that is not related to the design of the
websites.

So, in this experiment, we have a factor in the result of the experiment, which is the experience of the user, which is not related to what we want to study, which is the design of the website.

In this case, the role of experiment design is to remove the influence of this factor in the study. What we could do, in this case, is to ask each user to only test one of the two websites. Or we could randomize the order, so some users test website A first, and other users try website B first.

==

Final example, let's say that we propose a neural network for a new vision problem, and we can compare it with some traditional architectures.

One thing that happens many times in neural network research is that you will try many variations of hyper parameters until you get one that works really well for the problem that you are trying to solve.

However, when you compare against the traditional method,
you take the traditional method directly from the literature.

So there is an advantage here, of the fine tuning and hacking that
you did when you were creating your model. If you think about it,
this is almost like a kind of preliminar training.

What we really want to know is if the model itself is better than the
traditional model. So we want to remove the influence of this
fine tuning. To make sure that the comparison is fair, we should
apply the same fine tuning techniques to the traditional model.

==

As you can see, there are many choices that you need to
make when you design an experiment, and these choices can have
a deep impact in the result of an experiment.

This causes a problem -- a researcher has a initial hypothesis,
and design an experiment to test the hypothesis. But the experiment
fails, and the researcher decides to change the experiment a little bit. But the experiment fails again, and the experimenter creates a third design.

The third design succeeds, and the experimenter publishes that. Hooray!

But can you see that there is a small problem there? We lost the information from the first and second failed experiments, and that could have been very important. In fact, maybe the third success is not even very important compared with the original result.

To prevent this problem, there is this idea of pre-registering experiments. This is very common in medical and psychology experiments,
but not so common in computer science yet. But the idea is that
you separate your publication in two parts.

First you publicize an experiment proposal, explaining in detail your experiment. Then after you do your experiment, you publicize the results, be they positive or negative. This separation helps maintain accountability in science. You can see this link for more information.

==

The final characteristic of a good experiment that I want
to talk about is reproducibility.

Reproducibility means that another person is able to do the
same experiment that you did, and can reach the same result.

This is important because, in the end, one of the goals of science
is to improve the total amount of knowledge in the human race.

Remember how we talked about Marie Curie sharing her techniques with
other people? This is what we are talking about here.

So if you are the only person that can do your experiment,
the experiment is not very useful right?

Fortunately, computer science is a bit lucky in this regard, it
is relatively easy to make a computer science experiment reproducible.

==

What can we do to make experiments more reproducible?

First, we need to be very clear when we describe our experiments
in papers or presentations. You write down all the details,
the parameters, the design, the process, so that another person
reading your paper can follow the same steps and reach the same result.

Then, we need to make the data and the code of our experiments open.
Even if the paper is very clear and very well explained, there are
many details that are dependent on the implementation, so open code is
essential in research. Same thing for data, even if you explain the
protocol to collect the data, repeating the process may not yield
exactly the same data, so sharing the original data is essential.

The way I think about it is that a majority of research in the world,
and definitely the majority of research in Tsukuba is funded by public
sources. So it is our duty to give back to the society, but making the
results of our research public as well.

Also, not only for replication but open data allows other scientists to make derivations of your work, to explore ideas that you did not have the time, or you did not consider. So open science is also important to accelerate the rate of scientific discovery.

==

So, let's summarize our talk for today.

The idea I wanted to transmit is that many scientific
discoveries depend on the result of good experiments and data.

And to obtain high quality data from your experiments,
you need to perform them carefully. A good experiment is
an involved affair, and I want you to consider carefully
how you prepare your experiments.

This careful consideration is what is called "Experiment Design",
and will be the theme of the rest of this course.

For future lectures, we will focus a bit more
on the statistical analysis side of experiment design, but
I will provide resources for other topics that I hope you
can study and consider.

That was the final video for this week. It was a bit
long, but I hope you enjoyed it.

See you next time!
