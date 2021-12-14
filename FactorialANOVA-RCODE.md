# ANOVA - Rcode 
## Creating a 'long table'
```{r}
library(tidyr)
data_long <- gather(data_frame)
print(data_long)
```

## ANVOA function 
```{r}
anova <- aov(dv~iv*iv_2      
    data=dataframe )
```

## Tukey HSD 
```{r}
TukeyHSD(anovaMODEL)
```

## Effect Sizes
```{r}
library(lsr)
etaSquared(anovaMODEL)
```

## General NHST-test code 
```{r}
alpha = groups * 0.05
#Set critical area as 0.05 * crtitcal area. 
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

# Example, (not done as code was not taugt fully example is with assumed values)
# ANOVA - Rcode 
## Creating a 'long table'
```{r}
library(tidyr)
data_long <- gather(data_frame)
print(data_long)
```

## ANVOA function for repeated measures
```{r}
anova <- aov(dv~iv + error, 
    data=dataframe )
```

## Tukey HSD 
```{r}
TukeyHSD(anovaMODEL)
```

## Effect Sizes
```{r}
library(lsr)
etaSquared(anovaMODEL)
```

## General NHST-test code 
```{r}
alpha = groups * 0.05
#Set critical area as 0.05 * crtitcal area. 
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

## Example,
A psychologist is measuring self-described exhaustive score (1=none, 10 = dead) after having one group
take susequent tests. But then, adding a group which was given water and protein bars to take at any time 

# Data
```{r}
subj_data <- data.frame(
    particpants_name = c("subj1", "subj2", "subj3", "subj4", "subj5"),
    Test_1 = c(2, 4, 2, 1, 3),
    Test_2 = c(5, 4 ,3 ,5 ,6 ),
    Test_3 = c(7, 9, 8, 7, 10),
    Test_1_exp = c(2, 4, ,1 ,1 )
    test_2_exp = c(4, 2, 3 ,4 ,5)
    text_3_exp =c(8, 8, 7, 9, 9)
)
table(subj_data)
```

## Long table conversion 
```{r}
library(tidyr)
tireddata_table = gather(subj_data)
tireddata_table
```



## Given crit p = 1.02

## As p is 1.05 larger than the crtical value of 0.05, the data is not statiscally sigfifgant, reject the null across the 2nd conditon.


The largest effect size grouup would be test_3
