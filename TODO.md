# Tasks

## New "Topic 05" -- Simple Experiment design
- In Lecture the lectures so far, we assumed always one independent variable, and one dependent variable (and possibly some blocking factors). What if we have more than one variable?
- What is a Factor? (Parameter, Treatment, Control)
- What is an Effect?
- Simple Experiment Design
  - One Variable at a Time (Cannot detect 2nd order effects, can use the methods we studied so far)
  - Factorial Design (Excessive number of experiments)
  - Randomized Design (Unequal pairings)
  - Latin Hypercube Design (Improving the distribution of pairings)
- Consideration: Number of replications (think more about this next class)
- How can we report in this data? (Will talk about it next class)

## New "Topic 08"
- Multiple Dataset testing in CS

  Prepare a lecture based on a close reading of Demsar's paper, focusing
  on hypothesis testing for algorithm comparison in computer science.
  (Maybe replace the Paper Reading Lecture)

  https://www.jmlr.org/papers/volume7/demsar06a/demsar06a.pdf

  A lot of focus on this paper about thinking of the nature of the
  problem and the assumptions of the Statistical testing.

# Open ended reflections (Lower Priority)

Things that happened in lectures/reports, that I need to make clearer in the next course.

## Talk about success and surprise in science.

A lot of people want to "find positive results", but negative results are very important (learn why this went wrong), and are necessary in science too.

## About student reports
- Some students think that submit code means including screenshots of jupyter notebooks in their pdfs. Need to make clear that this is not acceptable: Code and data must be submitted as separate files.

- In cases where the data is available online, it needs to be explained where, how to obtain, and conditions for use, as well as any pre-processing that was done.

## Add a separate, entire lecture about reproducible research
- Not a section of the first lecture.

## Exam:
- Exam should include "hidden curriculum" and interpretation of
  text in papers (but I need to include these in class)
  - Think about Japanese style ethical exams

## Other Lectures
- Idea: paired vs non paired: Use the example of testing a clustering
  NN method with different features. First it is tested on a sinlge
  dataset (unpaired), then explain that this test does not generalize,
  and a paired test on multiple datasets would be much better.

- Idea: Add self exercises (questions and exercise sheets) for
  students to test their own knowledge about the topics.

# ideas for 2023
Review P.Hoff
http://www2.stat.duke.edu/~pdh10/Teaching/421-502/

Rewrite some of topics 2-6 taking into account this course.

#########################################
# TODO 2024
## Rewrite Lecture Week 02 (Mean and Confidence Interval)
- The discussion about the CLT is too early. Should be end of the class.
- First thing: Clear example of mean and confidence interval using examples:
  - Coaxial cable (testing one value)
  - Comparison of algorithm parameters (testing multiple parameters)
  - Show calculation of mean / CI with formula, code, and visualization
  - See new R script (algorithm) for simple visualization example.

- Show an example with another estimator (Variance, Variance CI)
  - Experiment example: home-school walking

- Then go back to the theory part.
  - Need one slide to explain percentiles (maybe CLT can be explained after this)








