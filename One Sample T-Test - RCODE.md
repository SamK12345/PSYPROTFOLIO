# Code for one-sample t-testing

## Finding crtical t-values from alpha
```{r}
qt(alpha, df)
#note if looking for greater do 0.95, if less do 0.05, (p's/alphas are probablity scores)
#nomral q (not needed usually)
qnorm(alpha)
```

## Finding p/alpha values from t-values
```{r}
pt(t-stat, df, lower.tail = TRUE/FALSE)
# set lower.tail to value needed 
# if two tail is needed use this trick (notice the negative out front)
pt(-t-stat, df) + pt(t-stat, df, lower.tail = FALSE)
```

## comparing alpha/T values
If the calcualted p value is greater than the alpha value, the result is NOT stats sigf 
If the calculated t-value is greater than the critical value, the result IS stats sigf.

## One sample T-Testing
```{r}
t.test(data$whatever, mu=pop_mean, alternative = "less" or "greater" or "two.sided" )
# note "two.sided" is default
```

# Examples
A chemist wants to compare the concentration at equlibrium (K) at which the reaction between 
pure oxygen and gaseous air to create ozone. He does 8 trials and then collected data, he wants to
compare his data to the litiuritre mean of 0.00063 mol/L*K

## Data 
```{r}
K_values <- c(0.00065, 0.00063, 0.0006, 0.00067, 0.00068, 0.00065, 0.00067,0.00064)
K_mean <- c(0.00063)
cbind.data.frame(K_values) -> K_data
```

## Alpha and T's
```{r}
df = 8-1
alpha =0.025
#T-value
qt(alpha, df) # less than
qt(1-alpha, df)# greater than
```

## T-testing 
```{r}
t.test(K_data$K_values, mu=0.00063, alternative = "two.sided")
```
## Conclusion 
The t.test returned a p-value of 0.0796 and a T-stat of 2.0494
These results are not statiscally sigfigant, as p_obs>alpha and T_crit = 2.36 while T_obs = 2.01