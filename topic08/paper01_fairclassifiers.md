Genetic programming approaches for learning classifiers

- Abstract
	.. A detailed summary of the experiment.
	- Yellow - proposal.	
	- Green - comparison.
	- Blue - metric used for comparison.
	- Purple - main result.

- Introduction
	.. The summary of the experiment introduced in the abstract is further developed here.		
	- Yellow - explanation of the proposal.
	- Green	 - reminder of the comparison.
	- Pink - Some results.

- Go to experiment (section 4)

	- Yellow
		- They start by given a description of the problems.
		- More details in Table 1.

		.. The description is here to help the reader understand the context.
		.. Small - The focus of the paper is not on the problems.
	
	- Pink 
		- Code for reproducibility.
		.. Replication of the results in the base of a good experimentation.
 
	- Green
		- They introduce the models and describe the most important ones.
		.. It is important to describe what are the details of the methods.

- Go to section 4.1
	
	- Yellow left
		- They reason why they will used the FP and FN violation metrics.
		- They describe the metrics.
		.. These metrics are not frequently used, so the authors explain why they are using them, how to calculate them and how they use.


- Go to section 4.2
	
	- Yellow right
		- They describe the accuracy metric 
		.. This metric is common, no need to focus on why they are using it.
		

	- Yellow under table
		- They describe the APS metric.
		.. Again, if the metric is common, just move on.
	
- Go to section 4.3

	- Yellow left
		- They reason why they compare the accuracy-fairness trade offs.
		.. The metric is not frequently used so the authors explain why.
		.. They adapt the output of a method so that they can use this metric. 
		- They describe how they compare them.

- Go to section 5
	
	- Green 
		- They present the results of the first metric in Figure 3 and discuss the results.
		.. They use box-plots and analyses these results first. This is good for starting the analise.
		.. We can see the general trends from the box-plots.
	
	- Small green & underline
		- They show the main results (see that the underline talks about the same finding within different results)
		.. They comment the most important finding, Random Search performs well - They said that in the abstract and introduction.


	- Second Green 	- hypervolume
		- The present the result of the second analysis.
		- Statistical analyses supports the comments.
		- ***** Many methods -> pairwise Wilcoxon.
		.. The are using a non-parametric test (Wilcoxon) because the sum of sampled hypervolume values do not follow a normal distribution (they violate the CLT). They didn't show this in their paper, but in you report you must show if your samples add up to follow a normal distribution or not.
		.. Note that they did a pair testing - they ran their algorithms in many problems, so the test should consider the variations among algorithms for each problem.


	- Third Green
		- A full paragraph on the statistical analyses.
 		- The results are in accord with the results of the first metric (underlined)
		.. Again, they talk about the Random Search performing well.
		- They also comment about not (statistical) significant differences.
		.. It is nice that they comment about these results. Show that they are analyzing all their data.
 

	- Last green
		- Results are in agreement with previous ones.
		.. Random Search performs well here too. This repetition of results and comments on the random search can be very convincing.

