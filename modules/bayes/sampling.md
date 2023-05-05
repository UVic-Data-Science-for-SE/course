---
title: Statistical sampling and inference
date: May 2023
author: Neil Ernst
marp: true
---

# Sampling and inference

There's a lot of interesting math and ML going on behind the scenes of a probablistic programming language like Stan or PyMC3. This section goes into a bit more detail and points to some other resources. 


# Analytical Solutions
For a lot of problems, in particular, all that stuff from Algebra 12, we want to find the *analytical* solution: by moving things around the equals sign, find "x" by itself to derive the value.

We could use the handy *quadratic formula* to do this for quadratics. However, there does not appear to be similar formula for cubics, quartics, and certainly not for more complex functions. 

So how do we find zeroes (or other values) in these complex functions? This is just 349a material.

This is an optimization problem and we can apply a variety of optimization techniques. Essentially we can choose a starting point, then explore the space to see if we are getting closer to an optimum (hill-climbing, linear programming, etc). In Stan, the `optimize` function uses [L-BFGS](https://machinelearningmastery.com/bfgs-optimization-in-python/).

# Probability Density Functions
A PDF is a function that for a given probability distribution defines the expected histogram for long-run outcomes. Here's the PDF graphically for the Normal:

And the corresponding formula.

What we might need to do is figure out the precise shape of this curve, given some input data. Pretend for a second that you only have data, like in this figure:

You might be tempted to say "there's no pattern here" and throw up your hands. You would annoy statisticians with this approach, however. It turns out a lot of problems that generate data can be approximated (modeled) using probability distrubtions. FOr example, the arrival rate of cars at a red light can be modeled with the Poisson distribution. 

Our challenge is often to figure out a model for the data given the input data, and any prior parameters we might set. For example, I might have a person count how frequently cars arrive at a red light, and my parameters would be some loose constraints on how often that might happen (it has to be a positive number, it seems unlikely to be bigger than 1 million seconds, etc.). My other parameter (to try) is the model to apply; in this case, the Poisson distribution. 

Now the challenge; we don't know what the PDF would look like in particular (apart from the generic Poisson shape). This is what sampling has to do for us; given all those inputs, recommend a function that best accounts for what we see. 

More specifically, given data $y$ and parameters $\theta$, we would like to figure out the posterior probability density $p(\theta|y)$.

# Other Resources
1. The [Stan Reference](https://mc-stan.org/docs/reference-manual/index.html#overview) is comprehensive and easy to read.
2. 