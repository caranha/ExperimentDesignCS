# Interaction Effect Analysis on synthetic cathegorical data
# Based on the first example found in
# https://statisticsbyjim.com/regression/interaction-effects/

# General idea: 

# Question: Do people prefer mustard or chocolate on their food?

# A survey was collected that asked people to rank their "satisfaction" score 
# after eating a snack consisting of:
## Main Food: Hot dog or ice cream;
## Condiment: Chocolate sauce or mustard;

satisfaction.df <- read.csv("Condiments.csv")

# First, we observe the satisfaction by factor
## Satisfaction by Food:
boxplot(satisfaction.df$Enjoyment ~ satisfaction.df$Food)

## Satisfaction by Condiment: 
boxplot(satisfaction.df$Enjoyment ~ satisfaction.df$Condiment)

## So people enjoy Chocolate Sauce and Mustard the same, right? 

# Let's see the means of all combinations
aggregate(Enjoyment ~ Food + Condiment, satisfaction.df, mean)

## it is clear that it is not all the same.
## Chocolate is high with Ice Cream, but low with hotdogs
## Mustard is high with hotdogs, but low with Ice Creams

# Let's visualize the interaction effect!
interaction.plot(satisfaction.df$Food, satisfaction.df$Condiment, 
                 satisfaction.df$Enjoyment, 
                 xlab = "Food", ylab = "Enjoyment", trace.label = "Condiment")


# Calculating the magnitude of the interaction effect 
# by using a linear regression model

Food.lm <- lm(formula = Enjoyment ~ Food + Condiment + Food*Condiment, 
              data = satisfaction.df)

# Linear Regression model and coefficients (Marginal effects)
summary(Food.lm)

# ANOVA (effects of each factor on the final result)
summary(aov(Food.lm))
