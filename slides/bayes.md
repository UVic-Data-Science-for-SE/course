---
title: Bayesian Data Analysis in SE
date: Sep 2022
author: Neil Ernst
marp: true
---

# Introduction

(Mostly based on McElreath's [book](https://learning-oreilly-com.ezproxy.library.uvic.ca/library/view/statistical-rethinking-2nd/9780429639142/xhtml/10_Chapter02.xhtml))

McElreath has this notion of *golem*, essentially a mechanical device that for a given input produces some statistical test output. In our world these are the *models* we work with. 

![](images/iron_golem.png)

----

For example, if I have two sample populations with mean $x_i$ and $x_j$, st dev $s_i,s_j$, then my golem might tell me to use a t-test to compare the means. And importantly (hence the golem metaphor) without any awareness of what the inputs are, and especially with no idea if that is the right golem to use for the problem. Thus we should be very careful when relying only on statistical tests, as their results may not be accurate.

----

![width:700px](images/mcelreath-decision.png)
(Ch 1)

----

# Bayesian Data Analysis

> Count all the ways data can happen under the assumptions. Assumptions with more ways the data can happen are more plausible.

Model **plausibility**: instead of falsifying some (often arbitrary and unrealistic) null hypothesis model (e.g., programming skill has NO EFFECT on task time), compare credible models (or hypotheses). Which one best describes the data? 

----

* Watch for overfitting - if we train on the data, the model knows the **sample** really well, but not the broader **world** (which is what we care about!)
* Use information theory ([AIC](https://en.wikipedia.org/wiki/Akaike_information_criterion), cross-validation) to compare

*Marbles example* - see text chapter 2


----
## Bayes as marbles 

>  A conjectured proportion of blue marbles, *p*, is usually called a **PARAMETER** value. It’s just a way of indexing possible explanations of the data.

>  The relative number of ways that a value *p* can produce the data is usually called a **LIKELIHOOD**. It is derived by enumerating all the possible data sequences that could have happened and then eliminating those sequences inconsistent with the data.

>  The prior plausibility of any specific *p* is usually called the **PRIOR PROBABILITY**.

>  The new, updated plausibility of any specific *p* is usually called the **POSTERIOR PROBABILITY**.

Than we can use Bayes's law to say `Posterior prob is proportional to Prob of data X Prior`

----
## Bayesian inference: the ICSE example. 

What is happening [in the code](https://github.com/neilernst/icse_tutorial) (see Github).

----
## A short intro to causal models and DAGs

(McElreath chapter 5; hint: helpful for assignment)

A DAG can show the causal associations in the model you are building. It helps answer the qestion, What are the elements that matter in understanding the inference and potential confounding factors? 

The DAG forces us to be explicit about our theory about how the phenomenon comes to be. There are testable implications of the causal graph. For example, are two variables associated? (presumably Yes, if they are connected). Are two variables independent? We can look at simple correlations to check this. 

----
> Is there any additional value in knowing a variable, once I already know all of the other predictor variables?

This might help us identify when we are collecting useless extra data.

If we look at the model in 5.1.3, we see how we build a model to check the ways in which two variables, or factors, influence the model.

----
## Causal Workflow

The point of causal modeling is to create a model *outside of statistics* to describe what we think is happening in our research world. 

It is about causation, i.e., we specifically want to see if some intervention is bringing about a change in the predicted variable. If we don't care about causation then this model wouldn't apply. But note in my experience that is usually the type of question data science is curious about. 

----
## Causal Workflow: paths
1. Identify the data we have collected or will collect (lines of code, complexity, hours worked, etc). Since the universe is itself causal, we clearly cannot collect data on everything. 
2. Consider unobserved (latent) variables - we won't or cannot measure it (e.g. for privacy reasons), but we need to account for it. 
3. Decompose the DAG into three elemental paths: **forks** ($X \leftarrow Z \rightarrow Y$) **pipes** ($X \rightarrow Z \rightarrow Y$) and **colliders** ($X \rightarrow Z \leftarrow Y$)

----
### Pipes

- If ignore Z, then X and Y are associated. Stratify by Z, X and Y not associated. All of the information about X comes to Y through Z. No additional information about X if we know Z. 

### Forks

* Same structure as pipes. X and Y are associated because they both have information only from Z. Once you learn Z, learning X doesn't give more data on Y. 
* Need more data to distinguish forks from pipes. 

### Collider

* Ignore Z, X and Y NOT associated. Stratify by Z, X and Y are associated. 
* X and Y are independent causes of Z. 
* X and Y have mutual information: learning X tells me something about Y

----
## Building Models

Note: we can write linear regression equations as either $y = mx + b$ or as the model variant of that, $y  \sim Normal(\mu,\sigma)$ (And possibly some error term $\epsilon$)

From Chapter 4.2 (a language for describing models):

1. What measurements (variables) are we hoping to predict/understand? ($y$, here)
2. For each variable, what is a likelihood that describes the plausibility of the observations? (Here, Normal())
3. What predictor variables will help us find the outcomes?
4. Use these predictors to define the shape and location of the likelihood (here, $\mu,\sigma$)
5. Choose priors to define our *initial* information state for all model parameters. (Where should the mean be? What should sigma be? )

----
## A short digression into priors

How should we choose our priors? Isn't this biasing the inference?

We will **set** priors using statistical probability distributions (in R type `?Distributions`). These distributions cover a range of widely understood generative processes and include:

* Gaussian/Normal distribution
* Binomial
* Uniform
* Student's T
* Poisson
* InvGamma
* Weibull

And [many many others](https://en.wikipedia.org/wiki/List_of_probability_distributions).

----
 In R, these distributions are included by default, and can be used typically with the following prefixes:

` d`, for "density", `r` for "random generation" (ie. draw one number from the distribution at random), `p` for the distribution, `q` for quantile. To do a simulation of the grades of 100 students at random assuming the grades are normally distributed with mean 75 and SD 10, we could say 

`grades = rnorm(100, 75, 10)` and get a vector of grades, again randomly distributed according to the normal we specified. (Hmm, new grading idea!)

![width:400px](grades.png)

----
One thing to note: although libraries like Seaborn allow you to fit distributions to your data, in a principled Bayesian workflow we would try to choose the prior based on our domain understanding. 

In other words, taking the data and fitting a distribution implies we think the data perfectly determines the distribution. This may not be (and often isn't) the case.

----
One of the bigger challenges for non-statisticians like us is understanding the underlying assumptions and applicability of probability distributions. In a lot of cases the Normal, Poisson, logNormal distributions (in addition to Uniform) give us most of what we need for this course. 

* The Poisson is good for simulating discrete event arrivals, like bugs in code or cars at a stoplight. 
* The logNormal simulates the possibility that there is a fat tail (skewness) in the data, which is often the case in software data (especially for networks). Of course we could take the log of the measured data that is logNormally distributed and then model the result using the simple Normal distribution.
* The Uniform is an equal probability distribution across all outcomes, and often models the situation when we don't know any better.
  
----
## Dealing with Zeros
A further consideration is *zero-inflation* which means distributions are padded with more zero values. This reflects the scenario in which a lot of results are empty, e.g., if you are looking at defect data and some group of files have no bugs reported. 

Again, base your choice on the **domain process as you see it**. And then **compare the models** using info criterion like AIC to see which model is best suited. 

----
## Statistical Model Specification in R and Stan

We now can specify our statistical model using the tilde notation. For variables W (for waistline), D (for Donuts), we can say W is influenced by / predicated by / modelled by D, i.e., donut consumption influences waist line. We write this as:

$$ W \sim D $$

A full model formula will include the priors for the parameters and look more like 

![width:300px](http://www.latex2png.com/pngs/3c303e21c0412cb61182d6b54af7b874.png)


###### Once we have this we translate it into Stan's DSL (see 4.3):

``` R
flist = alist(
	height ~ dnorm(mu,sigma),
	mu ~ dnorm(178,20),
  sigma ~ dunif(0,40)
)
```

and then model it using Stan.