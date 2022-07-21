
# Experiment with Multiple Factors

Hello everyone, In this lecture, I want to talk about factors.

==

"Factors" are the input variables in an experiment. Let me give you a simple example:

Consider the following experiment. I want to know how far I can walk, while carrying different ammounts of luggage.

So I measure how far I can walk for 5 minutes, while carrying some luggage.
I have a box with 10kgs of luggage, a box with 20 kgs of luggage, and a box with
40 kgs of luggage.

In this experiment, the weight that I am carrying is a factor of the experiment,
and the distance that I walk in 5 minutes is the "response variable".

I expect that, as I carry more weight, the distance that I walk will be smaller.

We use the word "levels" to descrive the different values that a factor can
assume. In this example, the factor "weight" has three levels: 10 kgs, 20 kgs and 40 kgs.

==

Until now, we have considered experiments with one factor in this course.

In lecture 3 we talked about the t-test, which is used to compare two samples. The t-test models an experiment with one factor and two levels.

In lecture 4 we talked about the ANOVA, which is used to compare several samples. In this case, the model has one factor, and several levels.

For example, let's say that we are comparing how much time it takes for the training of a neural network to reach a certain error level, when using different optimization algorithms: SGD, Adam, Adagrad, and CMA-ES.

In this case, our experiment has one factor: the optimization algorithm used.

This factor has four levels: SGD, Adam, Adagrad, and CMA-ES.

==

We can make the experiment a little bit more complex, by also taking into account
the effect of the number of layers in the neural network.

Let's say that we want to test a neural network with 2, 5 and 10 layers.

So now our experiment has 2 factors: 1) the optimization algorithm, and 2) the number of layers. The optimization algorithm factor has 4 levels, and the number of layers factor has 3 levels.

In an experiment with one factor, we only need to consider how this factor affects the response variable. But when an experiment has two factors, we also have to consider how the factors affect *each other*.

For example, it is possible that the optimization algorithms are affected in different
ways by the number of layers, so that when the number of layers is low, algorithm A works
best, but when the number of layers is high, then algorithm B works best.

This relationship between different factors is usually called a *second order effect* or an *interference effect*. With more factors, we can even consider third order effects or higher. The more factors we have in the experiment, the harder it becomes to analyze its results.

==

In this lecture, we will study two simple approaches to deal with experiments with
a small number of factors.

In general, if your experiment has many factors and levels, it will become more complex to analyze the data obtained in the experiment, and it will become more expensive to obtain the necessary observations.

Because of this, it is good practice to design your experiment to limit the number of factors and levels that you have to take into account.

==

Talking about simplicity, the simplest design that you can use, when you have an experiment with multiple factors, is the "OVAT" design (One Variable at a Time).

In the OVAT design, if you have N factors, you perform N experiment. In each experiment,
you change one factor, and keeps all the other factors fixed. The fixed value should be
"standard" values, determined from domain knowledge.

For each factor, you perform an independent analysis with 1 variable, using some of
the models that we have studied so far.

==

For example, let's consider that we are performing an experiment to find the
best parameters of a variation of Differential Evolution. This algorithm has
two important parameters: Cr and F.

We decide to use the OVAT design.

So first, we choose the standard values for Cr and F from the literature.

Next, we analyze the Cr parameter. We fix the value for F, and we try 10
different values (levels) for Cr.

Next, we analyze the F parameter. We fix the value for Cr, and we try 10
different values (levels) for F.

For each of these two experiments, we calculate the sample size, collect the
data, and perform an standard ANOVA analysis.

# Randomization and Blocking. **TODO**

- Blocking is the generalization of paired design for an arbitrary number of
non-decision factors.

- Blocking is Paired design for an arbitrary number of factors

**CONTINUE FROM FELIPE'S BOOK, CH-11**


# Factorial Design

Hello Everyone,

In a previous video, we discussed experiments with more than one factors, and we explained the OVAT (One Variable at a Time) experiment design.

The OVAT design is very effective in some situations, but it cannot be used to explain the interaction effects between two or more factors.

In this video, we will study the "Full Factorial Design", which can be used to check for second order effects between two or more factors in the experiment.

==

The idea of the full factorial design is that we perform all possible combination
of the factors under study.

So if we have two factors, factor A with 3 levels, and factor B with 4 levels,
a full factorial design will require at least 3x4 = 12 observations.

In practice, we want a few replications (r) of each combination of factors A
and B, so the total number of observations will be at least |A| x |B| x r.

As you can see, full factorial designs can get very expensive.

==




**FELIPE CAMPELO VENTILATOR EXAMPLE**

- Describe the example
- Describe the initial boxplot Analysis
- Describe the conditional Anova



==

Let's first look at this experiment using the tools that we have now. Because we have many levels, we have to use ANOVA, but what is the design for our ANOVA?

- Two one-factor ANOVAS: add all repetitions.
  - Optimization: 4 levels, 15 repetitions
  - Layers: 3 levels, 20 repetitions
- One ANOVA with 12 treatments

What is the difference between these designs, which ones are valid?

The first two ANOVAs can mischaracterize the results, because they hide the interaction effect of one of the factors.

On the other hand, the third ANOVA has "valid" results, but we usually want more information, such as which factors have which effects on the result variable, and how the factors interact.

So we need a different model that considers these interaction effects.

==

Additive Effects model. This model assumes that the effects of the different factors on the output variable are *additive*.

Y = m_u + a_i + b_j + e_ijk

The derivation of this model is on Peter's lecture notes.

==
Interaction model: adds an (ab)ij term.

Y = m_u + a_i + b_j + (ab)_ij + e_ijk

The interaction term is a correction for the non-additivity of factor effects.

==

Which model should we use?

If the differences between levels of one parameter are uniform across levels of the other parameter, then we can use the reduced (more powerful) additive effects model.

A1 - A2 = B1 - B2 = C1 - C2 = D1 - D2

... etc.

If this condition does not hold, we need to use the full model that includes interaction effects.

==

Please see the full derivations on Peter (chapter 6)



# Study More:

You can use the following keywords to search for more materials to improve your understanding of these topics.

- Complete Randomized Block Design (CRBD)
- Additive Effects Model
- Factorial Design
- Latin Hypercube Design

==

Also, the following related reading has more information about the topics studied today.

- Peter Hoff, Statistics 502 Lecture Notes (mainly Chapter 6)
  http://www2.stat.duke.edu/~pdh10/Teaching/421-502/LectureNotes/notes.pdf
- Felipe Campelo, Design and Analysis of Experiments, Chapter 11 and 12
  https://github.com/fcampelo/Design-and-Analysis-of-Experiments/blob/master/11-Blocking/Chapter11.pdf
  https://github.com/fcampelo/Design-and-Analysis-of-Experiments/blob/master/12-FactorialDesigns/Chapter12.pdf
