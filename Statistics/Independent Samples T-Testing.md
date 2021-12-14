# Independent Samples T-Testing
This version of [[Null Hypothesis Sgnificance Testing]] uses a T-test to compare the means/distributions between *two unrelated groups* rather than comparing to a population mean, such as in [[One Sample T-testing]], however, indepedent samples t-testing can only be used when two groups of a sample are not realted to each other. 

>Eqaution for Independent T-testing 
>>$$t = \frac{(\overline{X_1}) - (\overline{X_2})}{s(x_1-x_2)}$$

## When to use
Use to evalaute the differences beteween two samples, which are assumed to be **normal** in their own distributions. These samples must be *independent* from each other, usually meaning separate condiitons, which shoudn't effect either group. 
Use **Independent sample st-testing if...** 
	-	*You have two groups which are separated*
	-	*If a normal distrubtion can be assumed* 

## Pros and Limitations
*Pros* 
	-	*Can be used to compare two groups representing two indepdent populations*.
	-	*Can analyze the sigifigance of your data.*
*Cons*
	-	*Like [[One Sample T-testing]] there is a assumption that the popuatlion's (and therefore your data) is based on a normal distribution*
	-	*Cannot be used to compare samples in certain expiermental designs in which conditions are changing for a costant group, see [[Related Samples T-Testing]]
	

## Preregistration
Depending on if the T-test is one or two-tailed between the two groups,  hypothesis will usally be generated in this format;

H(0) - There is not  an apparent  statiscal difference between (two indepedent groups)/
H(a) - There is a statistical sigifgance between (two idenpendent groups) in (direction).



## Steps of NHST applying.
-	*1). Create null/alt hypothesis* (see above)
-	*2). Set crtical area, (one tailed = 0.05, two tailed = 0.025), find [[degrees of freedom]]* 
-	*3). Find p-statistic/T-stat*
-	*4). If p_obs <  p_alpha faill to accept null or if T_obs > T_crit fail to accept null,  vice versa applies to failing to reject null.

## Interpretation 
A t-test will return two values of interest, a calculated T-stat along with a p-value (R), if the observed/calculated p is less then the set alpha, or the T-stat **is greater than** the critical area, then the results is statsically sigfigant. 

## [[Independent Samples T-Test - RCODE]]

