# Related Samples T-Testing 
This verison of [[Null Hypothesis Sgnificance Testing]] uses a T-test to compare distribution between *related groups* outside of comparing to a population mean in [[One Sample T-testing]] and [[Independent Samples T-Testing]].  What is imporant in analysis within related samples t-testing is that it can only be used in ceartain test-designs where groups are related or repeat in conditions. 

> Equation for Related Samplse T-Testing
> $$t=\frac{\overline{X} - \overline{Y}}{S_d}$$


## When to use
You can use a related t-test to compare the differences between two ***related samples***
Types of groups that are often used within related samples t-test
	-	**Natural Pairs** where groups are not explictly controlled,  for example *twins/family.*
	-	**Matched Pairs**Individuals are paired by characteristics by the reserachers.
	-	**Repeated Measures** where indivduals are exposed to more than one IV level (or just IVs)
	
## Pros and Cons
*Pros*
	-	*Can be used to compare group(s) which are given more than one level of treatment*
	-		*Or are theorectially related to each other*
	- *Will give the sigifigance of your data if the measurement confers to a normal population curve,*
*Cons*
	-	Like most NHST tests (paramertic tests in general), there is no way to use t-tests to evaluate if the population distribution is not normal.
	
	
## Preregistration 
Hypothesis will be generated within as an example like this;

*H(0)*
There is no statsical difference in DV between *IVs groups*

*H(a* 
There  is a statsical difference in DV between **IV(s) groups*.


## Steps of NHST 
1). *Creating null/aletnative hypothesis*
2). *Set crtical area (0.05 standard)*
3). Find p/T statistics 
4). If p_obs <  p_alpha faill to accept null or if T_obs > T_crit fail to accept null,  vice versa applies to failing to reject null.

## Interpretation
Like most T-tests, a Related Samples T-Testing will return both a p-value and a t-value, which can be used to decide if the means are statscially different or not.  if the observed/calculated p is less then the set alpha, or the T-stat **is greater than** the critical area, then the results is statsically sigfigant. 

## [[Related Samples T-Test - RCODE]]

