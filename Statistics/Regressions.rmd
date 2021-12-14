# Regressions 
## Regression linear r-code 
```{r}
model <- lm(y ~ x, data=dataframe)
# The lm value sets other values to the variable you assign it
# Find fitted values and residuals by;
model$fittedvalues
model$residuals  
```

## Examples 
A statsican wants to find the relationship between presidental approval and average nationwide gas prices.
```{r}
gas_prices <- c(3.25, 3.56, 4.20, 3.056, 4.92)
approval <- c(56, 57, 52, 54, 49)
cbind.data.frame(gas_prices, approval) -> data
```

```{r}
linearmodel <- lm(approval~gas_prices, data=data)
linearmodel$fitted.values
linearmodel$residuals
```

## Interpretation 
We can now somewhat predict future approval based on estimated gas prices. 
