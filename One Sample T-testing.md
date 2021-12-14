# One Sample t-testing
Simliar to Z-scoring, a one sample t-test is used to compare the mean of sample data to a population distrbitution, *however, t-testing can be used to assume that the population distirbution exists on a normal scale while Z-scores required a given population distribution.*

Formula;
>$$t=\frac{\overline{X} - \mu}{s_x}$$
where 
>$$ s_x = \frac{stdev}{\sqrt{n}}$$
## When to use
The one sample t-test should be used to compare the means of a sample group, which is compared * againist a common **assumed normal** collective/population **mean***. 
Use **One sample t-testing if...**
	-	Have a mean prescibed, or a common value.
	-	Are comparing one-sample/group, if there are more use [[Paired Samples T-Testing]] or [[Independent Samples T-Testing]]


## Pros and Limitations
Pros;
	-	Allows for comparision between a sample gorup, when no population distrubtion is directly given.
	-	Gives a direct indication (either through p/critcal values) if a sample is statsically sigifigant. 
Limitations;
	-	Assumes that a population distribtruion is *normal*, meaning that this t-test cannot be used if a differing distribution type is present within a population.
	-	Data/Distribution is #homogenous
	-	Variables are indepdent. 

## Preregistration
Depending on if the T-test is one or two-tailed, hypothesis will usally be generated in this format;

H(0) - There is not  an apparent  statiscal difference between (varibles)
H(a) - There is a statiscal sigifgance between (variables) in (direction)

## [[Null Hypothesis Sgnificance Testing]]
All the steps for NHST apply to one sample t-testing
Steps
-	*1). Create null/alt hypothesis* (see above)
-	*2). Set crtical area, (one tailed = 0.05, two tailed = 0.025), find [[degrees of freedom]]* 
-	*3). Find p-statistic/Z-stat*
-	*4). If p_obs <  p_alpha faill to accept null or if T_obs > T_crit fail to accept null,  vice versa applies to failing to reject null.*

## Interpretation 
A t-test will return two values of interest, a calulated T-stat along with a p-value (R), if the observed/calculated p is less then the set alpha, or the T-stat **is greater than** the critical area, then the results is statsically sigfigant. 

## [[One Sample T-Test - RCODE]] Examples Included 