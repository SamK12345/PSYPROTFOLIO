# Z-scores
Descibes the distance between a score and a set ditribution, (usually normal)
	-	Is measured in [[standard deviation]]
Is used to when a mean is given and you want to compare that score to a normal curve to represent a *population*
	

	
## Standard Z-Distribution
Exists as a #Normal_Curve, with a [[Mean]] of 0 and a [[standard deviation]] of 1.

## Pro/Limitations of Z-scores
Pros:
	- Allows for the comparsion of values to a normal population distribtuion.
	- Will give the probablity of recieveing a score/value, something that is important in statistics.
Limitations:
	-	Does not detail weather a results is statistically significant or not. 
	-	Cannot be used to calcualted in non-normal distribution such as bimodal distribution. 
	
## Example Pre-registration 
RQ  - What is the probablity of achieving a certain score on a test.
H(a/0) - N/A

## Relation to [[Null Hypothesis Sgnificance Testing]]
As NHST involves comparing a data set to a distribution, Z-scores are imporatnt in finding the probablity of a certain score, graphing scores to compare to the population mean.

*Note: Z-testing needs a population mean/distrubtion, which NHST doesn't. *
## Calcuating Z scores
$$Z = \frac{X-\overline{X}}{S}$$
>*X-bar = mean*

## Interpreting Z scores
 The zscore equation will return a score which details the number standard deviations showing a positive or negative value of standard deviations from the mean. This will tell you how a single score compares to a population set. The larger the absolute value of the z-score, the further out from the normal it is.
 
 
## Z-scores in R + examples of calcuations and interpretation 
[[Zscore-RCODE]]

