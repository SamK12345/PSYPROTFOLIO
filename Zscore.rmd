# z-scores and the normal distrubtion. 
```{r}
#Calulating z-scores
(value - mean())/sd())
#or
scale(values)
```

## Example: 
You are a teacher who wants to find how a certain score prefroms when compared to other 
scores. Find z-score of student #23

### Data
```{r}
student_id <- 1:25
scores <-c(45,40,63,22,56,92,49,70,92,45,66,54,30,70,52,54,45,80,91,66,55,33,75,46,55)
test_data <- cbind.data.frame(student_id, scores)
summary(test_data)
```

### Z-scores
```{r}
scale(test_data$scores)
## To find the probablity of getting more (or equal to) than this score 
pnorm(0.91367) -> probablity

# Note; Qnorm works backwards, using probablity to a normal z-score
qnorm(probablity)
```
