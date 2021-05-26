# Topic 7:
- Sample Size and experiment Power

## Power
- Power and Sample size, what it is, and why it matters?
  - Power: probability of type II error
  - Sample size: number of observations, related to experiment robustness
    - When sample size goes up: In general, error of estimators (mean, deviation) goes down
    - The deviation of the data itself does not go down!
      - Dice example: estimation of the mean goes down, but the error of one dice remains.
      - So this allows us to separate "sampling error" from "natural deviation of the observed phenomenon"
    - cost of experiment goes up!

- How to determine sample Size
  - When sample size is chosen for you:
    - Experiment cost
    - Experiment restriction
  - What can we do, when we cannot choose sample size?
    - Cancel the experiment? Not necessarily
    - We can measure the power of the experiment, and determine how much we can rely on the results
    - We can improve the power of an experiment by changing delta.
  - Sample size = 30
    - Why do we see this value so often?
    - Is this a bad or good value?
      - (There are no bad or good values, there are things the value gives you, or not give you)
      - As sample size 30 will in general guarantee that your mean estimator will follow a normal distribution, except in extreme cases
        - But maybe the variance is still too large
        - On the other hand, maybe you need much less samples, and 30 is wasteful
        - You need to do power calculations to estimate this.
      - Also, you still need to guarantee the other assumptions (equality of variance, independence)
  - Sample size calculation
    - sample size calculation for single sample test
    - sample size calculation for post-hoc multi-sample test
    - Methods for z tests, methods for post-hoc tests
  - Be careful with sample size calculations:
    - Pseudo-replication (it is not the sample size the matters, but how you choose it.)
      - An extreme example: We develop an algorithm to solve optimization problems.
      - The optimization problems have "Types", "Sub-types", and "Sub-Sub types"
      - We are interested

# TODO
## Basic materials
- Prepare base files
- Move sample size discussion from other lectures here
  (one sample sample size, two samples sample size, paired samples size, anova sample size)

- Prepare explanation of report 2 (prepare manaba submission forms for report 2)
