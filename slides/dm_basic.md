---
author: nernst
date: Oct 2021
marp: true
title: Basics of Data Mining in SE
---

# Data Exploration
(A lot of this material is from [R for Data Science](https://r4ds.had.co.nz/), a freely available book)

![](https://d33wubrfki0l68.cloudfront.net/571b056757d68e6df81a3e3853f54d3c76ad6efc/32d37/diagrams/data-science.png)

One of the first tasks is to better understand the data. We looked at that in the Bayesian context from the *epistemological* and *ontological* perspectives: how we think the data were created, and what properties exist in our data. 

Often that means background reading, e.g., a literature review or domain modeling. What are your intuitions about how the data would be generated, e.g., for job application information?

----

Next, take the data and get it loaded into R or Jupyter. My favourite toolset is the [`Tidyverse`](https://www.tidyverse.org/), a set of libraries and philosophies for manipulating R data frames.

Loading data is initially easy but quickly becomes a major challenge as data gets larger and more complex. A non-trivial amount of effort can be spent wrangling data into the correct format. A big part of TidyR is to get the data into a "shape" that is easy to work with.

Let us consider the following datasets: http://promise.site.uottawa.ca/SERepository/datasets-page.html. They are mostly in a common data exchange format called ARFF. 

## Descriptive stats  - mean, median, variance

We can begin by (after reading the dataset description) looking at common **descriptive** properties of the data.

Use R's `$` column notation to explore each column. 

Tidy Data: 

1. Each variable must have its own column.
2. Each observation must have its own row.
3. Each value must have its own cell.

Factors: factors are categorical data, possibly ordered, like "letter grade" (ordered) or country name.

Let's say we are interested in how well Halstead complexity `v(g)` predicts defects. 

### Filtering and aggregating

In Tidyverse language, use the TidyVerse chaining operator %>% (pipe) to group operations on dataframes/tibbles.

Useful operations include `mutate`, `filter`, `count`. I find these operations extremely powerful for manipulating the data. You can think of them as data frame analogues for SQL query statements. 

##Probability distributions and fit 

## Visualization MPL and GGplot

# Regression

(Find things)

OLS in Python - Geron p 106  Grus p 185

SGD alg Grus p 187

Regularization (Grus p 200)

# Clustering

(Group things) 

K-means in Python (Grus P 170)

# Optimization

The simplest approach: GATE

**G** enerate  from data, priors, fuzzing

**A** ssess how well that approach works, quickly 

**T** ry (**e**valuate, maybe slow e.g. ask a human)

https://github.com/txt/ase19/blob/master/docs/optimize.md#top

## Genetic Algorithms

​	NSGAII

​	Diff Evolution 

[JMetal](https://jmetal.github.io/jMetal/) 

