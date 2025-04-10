
---
title: Assignment 3 - Bayesian modeling
author: Neil Ernst

---

NB: **To view the Brightspace assignment you must enroll in a Group ('Bayes') first. It will not appear until you are in a group, even a group of 1.**

In this assignment you will use Bayesian analysis to evaluate a software engineering result that was derived from conventional means.

Note: you may work on this in teams of 2. In that case, submit the identical file for both individuals but LET ME KNOW you are working with someone else in the document preamble.

This is an individual or paired assignment, i.e., you must work alone or with at most one other person.

If you need help with the assignment then please talk to Neil.

The data we will use in this analysis has partly been published before.[^data] The data is about software projects at NASA. It was used to understand how well certain predictors estimate eventual project costs (principally salaries/effort). This parametric estimation is the basis for COCOMO, the Constructive Cost Model, developed by the late Barry Boehm. The idea is to collect predictor data, apply parameters for project type, size, etc. and then predict how costly the project will be.

The purpose of this assignment is NOT to prove or disprove the COCOMO approach. Rather, it is to develop a bayesian workflow based analysis demonstrating mastery - or appreciation - of the concepts from the lectures.

Below we see the first rows of the data file that we will use, stored in ARFF format, a common machine learning format. Note more metadata is in the file. You might also explore the file using Weka, if you have experience with Weka.

```R
head(df)
  recordnumber projectname               cat2 forg center year         mode rely data cplx time stor virt turn
1            1          de avionicsmonitoring    g      2 1979 semidetached    h    l    h    n    n    l    l
2            2          de avionicsmonitoring    g      2 1979 semidetached    h    l    h    n    n    l    l
3            3          de avionicsmonitoring    g      2 1979 semidetached    h    l    h    n    n    l    l
4            4          de avionicsmonitoring    g      2 1979 semidetached    h    l    h    n    n    l    l
5            5          de avionicsmonitoring    g      2 1979 semidetached    h    l    h    n    n    l    l
6            6          de avionicsmonitoring    g      2 1979 semidetached    h    l    h    n    n    l    l
  acap aexp pcap vexp lexp modp tool sced equivphyskloc act_effort
1    n    n    n    n    h    h    n    l          25.9      117.6
2    n    n    n    n    h    h    n    l          24.6      117.6
3    n    n    n    n    h    h    n    l           7.7       31.2
4    n    n    n    n    h    h    n    l           8.2       36.0
5    n    n    n    n    h    h    n    l           9.7       25.2
6    n    n    n    n    h    h    n    l           2.2        8.4
> summary(df)
recordnumber                    cat2         year      cplx    acap    pcap      act_effort    
 Min.   :  1.00   avionicsmonitoring:30   Min.   :1971   h :58   h :51   h :39   Min.   :   8.4  
 1st Qu.: 24.00   missionplanning   :20   1st Qu.:1979   l : 3   n :32   n :44   1st Qu.:  70.0  
 Median : 47.00   Avionics          :11   Median :1980   n :10   vh:10   vh:10   Median : 252.0  
 Mean   : 47.75   monitor_control   : 8   Mean   :1981   vh:17                   Mean   : 624.4  
 3rd Qu.: 70.00   operatingsystem   : 4   3rd Qu.:1983   xh: 5                   3rd Qu.: 600.0  
 Max.   :101.00   simulation        : 4   Max.   :1987                           Max.   :8211.0  
                  (Other)           :16                                                          
```

## Objective

The dataset is describing project characteristics, known *before development started*, followed by (in `act_effort`) the actual effort that was required to complete the project. Our goal is to figure out the model that best predicts the effort required, given the predictors of project complexity `cplx`, year, project category `pcat`, analyst capability `acap`, and programmer capability `pcap`. 

We would like to understand the impact on actual effort, conditional on the observed data. Is there a difference between domains? Between , using *Bayesian data analysis* as taught in the course. This way we will be able to decide if the technique should be used by the company and, hence, if there is a need to take experience levels into consideration. For further information regarding the experiment we refer you to the publication previously cited.

Recall the principled Bayesian workflow:

1. Understand the data and the context. Does it jibe with your experience? What is the distribution and descriptive stats of the data? 
2. Draw a causal diagram explaining the dependent and independent variables. Did you capture them all? Are there any confounders/colliders? 
3. What generative models—likelihoods—might best explain what you are seeing? You might create a simple, uninformed model at first, then refine as in the example.
4. Sample that model using the `ulam()` function in the `rethinking` package. 
5. Check the convergence of the sampler using the appropriate check. D
6. Prior predictive check: does the result match up with the observed data? 
7. If the sampler converges, look at the posterior and do some posterior predictive checks. Is the model  reproducing the data you are looking for? 

## Downloading data

Instructions for installing all needed software can be found in [the ICSE repo](https://github.com/neilernst/icse_tutorial). You can download the data directly from [here](https://zenodo.org/record/268419#.YyQN5-xlAqs).  

```R
library(foreign)
df <- read.arff("nasa93.arff")
```
This is R code to parse an ARFF file directly into a data frame.

Alternately, you can use the [CSV file provided in the data directory](a2-files/nasa93_subset.csv), in which I selected certain columns to keep things simple.

## Requirements for the Assignment 

The report shall consist of not more than *six* (6) pages, font size *11*, including plots. The report shall be submitted as a PDF. The report shall be made in groups of no more than 2, and submitted as such, i.e., there must be *at most two names on the report*. You should both submit a version - this makes the marking simpler for Brightspace grading. 

You can use Overleaf for the writing of reports. There is a [LATEX template](https://www.overleaf.com/read/vnkvxqjfjjmh) that you can use for your report. It includes examples of the most common things you might want to use in a report for any assignment. The link is a read- only version of the original template. To be able to actually write your report, you *might* have to create a copy of the project (Menu→ Copy Project, in Overleaf). You can then edit the copy to your heart’s content.

If you don’t want to use Overleaf, you can instead download the source of the project (Menu → Download → Source). You can also use Google Docs or other editors as you see fit. 

For submissions, we will use the built in assignment system of Brightspace. You should have an assignment entry in the content list, where you can upload your PDF.

### Contents

Your report should contain, at minimum:

1. Description of the data, i.e., descriptive statistics, if there is a need to standardize/normalize, etc.
2. A defense of your likelihood(s). We assume you will develop at least two models with, perhaps, different likelihoods. Please use the same math notation to describe your model(s) as we do in the course , e.g.,

<!-- $$\mathrm{L}_i & \sim & \mathrm{Binomial}(n_i,p_i)\\
\mathrm{logit}(p_i) & = & \alpha_{\mathrm{SUBJECT}[i]} + (\beta_P + \beta_{PC}C_i)P_i\\
\alpha_{\mathrm{SUBJECT}} & \sim & \mathrm{Normal}(0,10) \\
\beta_P & \sim & \mathrm{Normal}(0,10)\\
\beta_{PC} & \sim & \mathrm{Normal}(0,10) $$ -->

![img](https://latex2png.com/pngs/3c303e21c0412cb61182d6b54af7b874.png)

3. A discussion regarding the priors you have chosen for your ‘final’ model. Defend them and show what happens if you change priors!
4. Results from running your ‘final’ model with `ulam()`, comparing it with other model(s) using WAIC or LOO, (see the ICSE tutorial notebook, and  the `rethinking` package has a `compare()` function for this) and reason about what the results means.
5. Interpretation of what the results mean from a practical point of view, i.e, which technique is better, does experience influence the results, and how does the analysis support your argument?
6. Adding a DAG is always nice (use the [ggdag package in R](https://ggdag.malco.io) and run `vignette('intro-to-ggdag')`). A DAG, as discussed, is a graphical way to explain what we think the *causal* implications are of the theory we are studying. 
7. Presentation of diagnostics from running Stan on the ‘final’ model, e.g., caterpillar traces (or trankplots), *R*ˆ values, and/or effective sample size. There’s no reason to show traceplots that take up a page!

Depending on the strength of your arguments, the wise use of visualization, and the style and clarity of your language, a pass grade can be given. A pass will not be possible unless one has appropriately answered items #1–5 above.

[^data]: Negative Results for Software Effort Estimation by [Tim Menzies](https://arxiv.org/search/cs?searchtype=author&query=Menzies%2C+T), [Ye Yang](https://arxiv.org/search/cs?searchtype=author&query=Yang%2C+Y), [George Mathew](https://arxiv.org/search/cs?searchtype=author&query=Mathew%2C+G), [Barry Boehm](https://arxiv.org/search/cs?searchtype=author&query=Boehm%2C+B), [Jairus Hihn](https://arxiv.org/search/cs?searchtype=author&query=Hihn%2C+J) available: https://arxiv.org/abs/1609.05563

