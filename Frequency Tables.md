# Representing data in R 
Data frames, freq. tables and graphs.

## Example 1: A timed running test
If a PE teacher runs a timed running test in minutes, how can his data be represented?

### Making data frames

  

```{r}

particpant <- c("subject_1", "subject_2", "subject_3", "subject_4", "subject_5")

time <- c(1,3,2,7,7)

example <- cbind.data.frame(particpant, time)

```

  

### Frequency Tables

#### Simple

```{r}

table(factor(example$time,levels=1:3))

# Where 1:3 can be reassigned to any min to max level

```

  

#### Grouped Frequency Tables

```{r}

library(Hmisc)

grouped_table <- cut2(time,g=4)

#g is the number of groups within the table, set to divide as needed

table(grouped_table)

```

  

#### GGPLOTING

```{r}

#ggplot defines an empty field and requires you to add componet parts:

## see https://ggplot2.tidyverse.org/reference/ for more detail, a bar graph is used in this example

  

ggplot(example, aes(time)) + geom_bar()

  

```