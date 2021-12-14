# ANOVA (One Way)
 Helps us compare more than two groups (unlike [[Null Hypothesis Sgnificance Testing]], to see if they are significantly different from each other. While also assesing interaction between each data set/groups.
Allows for a direct comparison between more than two sample means. 
- where alpha = $$0.05(groups)$$
Conceptually, it compares the individual means to a to the grand mean of all the samples. 
- Grand mean = the addition of all the means/total amount of means
- The sum of squares between groups divided by the sum of squares 
## Pros and Cons
*Pros*
	-	*Can now compare more than one group*
	

	
*Cons*
	-	*Is still a paramertic test, assumes a normal curve*
	-	*Further calucations for effect sizes and HSD are often needed. *

## Sums of Squares and Df's 
An ANOVA test will ouput both sums of squares and degrees of freedom for a dataset.

![[ANOVA table .png]]

#### Mathematical Representation
>$$t  = \frac{\overline{X-X_2}}{s_p+s_t}$$ 
>>$$SS_between/SS_treatment$$


## When to use 
Use a ANOVA test to evaulate differences when two or more sample means need to be evaluated, while using a tradtional [[Null Hypothesis Sgnificance Testing]]. 

Make sure that the groups are not repeated or reused  in any way, otherwise use [[Repeated Measures ANOVA]].

## Steps of NHST present.
1). *Pregistration*
2).*Set critical area (use 0.05 x number of groups)
3). *Run test, retrieving p/T stats.*
4).* f p_obs <  p_alpha faill to accept null or if T_obs > T_crit fail to accept null,  vice versa applies to failing to reject null
5). Draw conclusion based on results abvove.
6). Calculate [[Effect Sizes]] ([[Cohen Effect]])
7). Conduct multiple comparisions test. [[Tukey HSD]]
## Preregistration
Null(H0) = All means of groups are equal 
Alternative = All means are not equal, at least one mean is different from the others. 
	**Only two-tailed tests can be used with ANOVAs**

## Intpretation
Simliar to [[Null Hypothesis Sgnificance Testing]] use p-values and F-statistics to calcuate statiscal sigifigance. 

However checking for [[Effect Sizes]] is often alos necessary to see the differences between the groups. As well as checking for statsical sigfigance *inbetween each group* see [[Tukey HSD]]
 

#### R-code + interpreation 
[[ANOVAR]]