---
  title: "Diamond sizes"
author: "Brittany Adams"
date: '2022'
output:
  html_document:
  df_print: paged
pdf_document: default
word_document: default
---

```{r, include = FALSE}
#this next line is creating a subset called 'smaller' of the diamonds data
smaller <- diamonds %>% 
  filter(carat <= 2.5)
```

```{r, echo = FALSE}
#This next chunk is inline code. Inline code puts the text with the output of the function in my document.
```

We have data about `r nrow(diamonds)` diamonds. Only 
`r nrow(diamonds) - nrow(smaller)` are larger than
2.5 carats. The distribution of the remainder is shown
below:
  
  ``` {r, echo = FALSE}
#This next code chunk will make a plot in our output doc
```

```{r, echo = FALSE}
smaller %>% 
  ggplot(aes(carat)) + 
  geom_freqpoly(binwidth = 0.01)
```