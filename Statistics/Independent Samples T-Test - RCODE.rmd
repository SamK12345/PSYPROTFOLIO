# Code for independent samples t-testing

## General T-test code 
```{r}
df = n - 2
#Note: subtract N by 2 for degrees of freedom 
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

## T-testing for independent samples
```{r}
t.test(x,y var.equal = TRUE)
#Note: Set var.equal to two
```

## Example
A cardiologist is measuring how much greater (if at all) the avergae HRs of two separarte groups,
one of which is resting, while the other group is jogging on a treadmill. 

### Data
```{r}
subjects <- 1:10 
rest_HR <- c(72,68,55,80,75)
running_HR <- c(130,120,142,156,162)
cbind.data.frame(rest_HR, running_HR) -> run
```

### Setup 
```{r}
alpha <- 0.05
df <- length(subjects) - 2
critical <- qt(1-alpha, df)
critical 
```

### T-test
```{r}
t.test(run$rest_HR, run$running_HR, var.equal = TRUE)
```

### Conclsion 
```{r}
p_calc > alpha
T_critcal < T_OBs
results are statsically sigfigant. 
```
