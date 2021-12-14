# Code for related samples t-testing
## General T-testing code
```{r}
df = n - 1
#Note: subtract N by 1 for degrees of freedom 
qt(alpha, df)
#note if looking for greater do 0.95, if less do 0.05, (p's/alphas are probablity scores)
#nomral q (not needed usually)
qnorm(alpha)
```
```{r}
pt(t-stat, df, lower.tail = TRUE/FALSE)
# set lower.tail to value needed 
# if two tail is needed use this trick (notice the negative out front)
pt(-t-stat, df) + pt(t-stat, df, lower.tail = FALSE)
```

## Paired samples T-testing code.
```{r}
t.test(data$x, data$y, data = dataframe, paired = TRUE)
```

# Examples

A pharamcist is testing the effect of two different medications on a single person, they set up two levels, 
for one group. First, the group (n=5) is given one pill that has a very common side effect of dizziness, then 
the group is given anti-dizziness medication. The pharamcist records the patients self-descibed level of diziness.

## Data
```{r}
Inital_medication <- c(7,8,6,7,9)
Second_medication <- c(5,7,5,4,1)
medicine_data <- cbind.data.frame(Inital_medication, Second_medication)
```

## Critical values
```{r}
df = 5 - 1 
qt(0.025, df) -> T
T
pt(T, df)
```
## T-test 
```{r}
t.test(medicine_data$Inital_medication, medicine_data$Second_medication, data=medicine_data, paired=TRUE)

```

## Conclusion
As the observed p-value is more than the critical value, the results are not ststically sigfigant.