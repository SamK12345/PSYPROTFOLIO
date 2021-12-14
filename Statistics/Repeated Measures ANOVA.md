# Repeated Measures ANOVA 
Simliar to one-way [[ANOVA]] tests, repeated measures ANOVAs can be used to analyze the statsical varience between two or more groups,
**However**, this test is used within a paired or repeated trials test,, 

	- where alpha = $$0.05(groups)$$
Conceptually, it compares the individual means to a to the grand mean of all the samples. 
- Grand mean = the addition of all the means/total amount of means
- The sum of squares between groups divided by the sum of squares 

## Pros and Cons
*Pros*
-	Can be used to compare more than one group in a repearted measures design unlike [[Related Samples T-Testing]]
*Cons*
	- Is a parametric test 
	-	Still need HSD and effect size calcualtions. 
	
## Sums of Sqaures and Df
With a repeated measures ANOVA, there is an added SS and df for intersubject varibility., 

![[2021-12-13_20-30.png]]

## ANOVA Tables 
![[ANOVATABLE.png]]

## When to use
Use to evaulate the variences between two or more groups, while using tradtional [[Null Hypothesis Sgnificance Testing]],

Use in a repeated measures design, where groups are not randomally chosen, or have repeated measures.

## Preregistration 
Null(H0) = All means of groups are equal  
Alternative = All means are not equal, at least one mean is different from the others.  
**Only two-tailed tests can be used with ANOVAs**

## Interpretation 
Like [[Null Hypothesis Sgnificance Testing]]  RM Anovas use p-values and F-values, use [[Effect Sizes]] and [[Tukey HSD]] to evalaute individual group variences. 

## R-code
[[RepeatedMeasuresRCODE]]