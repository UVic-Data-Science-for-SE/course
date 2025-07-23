---
author: Neil Ernst
title: Statistical Modeling and Bayesian inference

---

One approach building inferential analyses is to use a frequentist, hypothesis testing approach where you examine the long-run probability of the data-generating mechanisms to assess how likely the results are under a null hypothesis.

The alternative is to set some limits on what you feel is likely to be true a priori, model the data generating process statistically, i.e. with a probability distribution, and then run Bayes's theorem $P(A|B) = (P(B|A) * P(A))/P(B)$ over the data collected. This produces the posterior probability of the parameters of interest, allowing for inferences to be drawn. 

We will start with some motivation from McElreath: https://speakerdeck.com/rmcelreath/l01-statistical-rethinking-winter-2019 and associated videos


# Learning Outcomes

- Apply Bayesian inference to software problems
- Relate statistical sampling problems to numerical analysis problems (e.g., as discussed in detail in CSC 349a).
- Apply statistical probability distributions to model software problems.
- Appreciate the rationale for causal graphs and causal language. 
  

| Topic                                                                 | Readings                                                                     | Exercises |
| --------------------------------------------------------------------- | ---------------------------------------------------------------------------- | --------- |
| [Basic Statistical Inference from a  Bayesian Perspective](bayes.qmd) |                                                                              |           |
| [Statistical Modeling](models_pub.qmd)                                |                                                                              |           |
| [Causal Modeling](causal_pub.qmd)                                     |                                                                              |           |
| [Probability Distributions and Priors](prior_pub.qmd)                 |                                                                              |           |

# Required Readings 

* Furia, Torkar, Feldt, [Applying Bayesian Analysis Guidelines to Empirical Software Engineering Data: The Case of Programming Languages and Code Quality](https://arxiv.org/abs/2101.12591)
* Ernst, [Thresholds](https://arxiv.org/abs/1804.02443)
* McElreath, [Statistical Rethinking ch 2](https://learning-oreilly-com.ezproxy.library.uvic.ca/library/view/statistical-rethinking-2nd/9780429639142/xhtml/10_Chapter02.xhtml) (netlink id required) and/or watch his [lecture video](https://www.youtube.com/watch?v=4WVelCswXo4)

# Optional Readings and Activities

* (opt) Ray, Devanbu, Filkov, ["Rebuttal to Berger et al 2019"](https://arxiv.org/abs/1911.07393) - a rebuttal to a replication on code quality and language choice on Github.
* (opt) Dorn, Apel, [Mastering Uncertainty in Performance Estimations of Configurable Software Systems](https://ieeexplore.ieee.org/stamp/stamp.jsp?arnumber=9286072) 
* (opt) [McElreath, Statistical Rethinking](https://xcelab.net/rm/statistical-rethinking/) (a super approachable, gentle introduction with R examples, but also translated into Julia and Python)
* (opt) [Gelman, Bayesian Data Analysis](http://www.stat.columbia.edu/~gelman/book/) (book)
* https://www.bayesrulesbook.com
* [A Conceptual introduction to HMC](https://arxiv.org/pdf/1701.02434.pdf)
* https://chi-feng.github.io/mcmc-demo/app.html - Hamiltonian MC visualization 

# Exercises

* Make sure you can get the sample [tutorial](https://github.com/neilernst/icse_tutorial) notebook to run in its entirety.