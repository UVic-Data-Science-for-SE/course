
---
title: Assignment 1 - R and Data Science
author: Neil Ernst
date: May 2025
---

In this assignment, you will be using R to run some simple data science approaches on an SE dataset. 

# Preparation
You should install R, RStudio, or similar tool (there are good plugins for VSCode).  

We will be using RStudio/R for this and assignment 2. Follow [this overview](docker.md) to get started with a Docker image.

You should follow this [set up and tutorial on R.](https://avehtari.github.io/ROS-Examples/Regression_and_Other_Stories_Appendix_A.pdf).

You should be using GenAI on this assignment. It should take you about 10-12 hours to finish using those tools. 

# Dataset and Problem

This assignment will work on two CSV files, one from [the Go project](a1/go-dataset1.csv), and one from [Wikimedia](a1/wikimedia-dataset1.csv). Download it and use it in your notebook. The data come from a paper I am not naming yet to avoid biasing you. The dataset is described by [its metadata file](a1/metadata.md). The dataset describes a number of fields about *code review at open source projects*, including the size of the code review, the number of days the code review took, and the gender of the code review requester. 

A code review (or pull request review) is a social process where two or more humans (to date, anyway) discuss a proposed code change, looking at a set of source code, test code, and documentation files to determine where the change can be improved, and whether it should be merged into the main development branch for eventual release.
  
## Data Exploration and Cleaning
1. Pick one of the two files to use for your model development. The other file will be held back to try and confirm your predictive accuracy.
2. Produce a scatter plot and a histogram that shows what the data look like. You will need to think about the problem a bit; what variables are you most interested in? 
3. Data cleaning: are there any anomalous outliers that should be removed? What about data balance? Are all the variables equally represented?
4. Factors and data types: are your data types the right kind? `read.csv()` will infer data types but is often wrong. In particular, you should use factors to set variables with levels (e.g. Gender in this dataset is binary).

**Q1a. What interesting insights do you see?**
**Q1b. What concerns might you have about this data?**

## Model Specification
Create a linear regression model to test the insight you had formed. 
1. Figure out what your independent (predictor) variables are, and which values you wish your model to predict (dependent). 

**Q2a. What is the model specification?**

## Model Estimation
1. Run the linear regression using `lm()`. For now, let's use the default parameters, although this is rarely a good idea.

**Q3a: what are your regression results?**
**Q3b: what is your interpretation of those results?**

## Model Evaluation
1. Check how well this model performs on the other data that you held back. 
2. You can use the `predict.lm` function to do this. Pass in 'newdata=<df name>' to get the prediction for each data point in the dataset. Use "type='response'" to get a prediction in terms of the response variable.

**Q4a: what is the predictive accuracy of your regression model?**

1. Try some other ML approaches if you wish for your prediction. Our goal is to predict, for a given row of new data, what the values will be for the predicted variables.

## Model Interpretation
Write 500 words summarizing the model you created and the insights it produced. Be sure to comment on the important principles we examined:
- data provenance
- measure validity
- measure reliability
- ethical questions that arise

# What To Submit
- Submit the notebook as a single Quarto (qmd) file for marking, via Brightspace. You should answer all the questions (above, in bold) in the notebook directly, supported by the R code as necessary.