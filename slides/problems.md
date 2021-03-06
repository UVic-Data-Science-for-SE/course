---
author: Neil Ernst
date: Oct 2021
title: Problems with Data in SE
marp: true
paginate: true
headingDivider: true
theme: 
---

# Dataset Challenges in SE Data Science

What are the data sources? 

----

* Commits
* Issue trackers
* Source code
* Structured data 
* Stack Overflow
* 
----

# What are some challenges? 
1. Using the data that is available, instead of the data that answers the question.
2. Ignoring domain assumptions that produced the data, e.g. the human aspects (Secret Life of Bugs)
3. Sampling opportunistically (convenience) instead of systematically.
4. Not understanding the sensitivity of your instrument (the Kangaroo problem)
5. Questionable research practices

----
One of the biggest problems - and best places to spend money - is **getting good data**. The most obvious example of this is building big freaking telescopes or high energy physics instruments. Too often we go and use grad students to do a task instead of spending more time getting professionals. If you are looking for a small effect, you need to have a precision instrument! 

----
# Effect sizes (briefly)
* Connect statistical outcomes (difference of means) to real-world impact.
* E.g. Cliff's D, R^2 (explained variance), Cohen's d, etc. 
* Section 2.3 of my [paper](https://arxiv.org/pdf/1809.09849.pdf)
> "effect size ignores the context of decision making. A raw number reflecting (for example) the standardized difference of means is hard for practitioners to interpret and must be contextualized.
> contextual, subjective judgment of observed effect sizes must be made and a ritualized interpretation avoided
* Bayesian analysis would implicitly ask us to do this: what effect is substantive? (avoid the golem!)

----
# Secret Life of Bugs
What is the "secret"?
> The histories of even simple bugs are strongly dependent on social, organizational, and technical knowledge that cannot be solely extracted through automation of electronic repositories

## Levels
1. Bug record data: bug tracker, resolution, people involved, commits associated
2. Automated conversation analysis: examining comments
3. Sense-making by informed observer
4. Direct narrative reports by participants

----
# Stark differences in data available
![width:500px](secret-humans.png)![width:500px](secret-events.png)

----
# Sampling 
1. For many SE phenomena, there is **no suitable sampling frame**; that is, a list from which to draw a sample.
2. Some SE studies adopt poorly understood sampling strategies such as random sampling from **a non-representative surrogate population**.
3. Many SE articles evince **deep misunderstandings of representativeness**???the key criteria for assessing sampling in positivist research (see Section 2.6).

----
# Sampling Approaches
1. Convenience
2. Purposive
3. Snowball
4. Probabilistic (random)
   1. Simple
   2. Stratified

----
# Sampling Challenges
1. Finding a representative sample: representativeness is the degree to which a sample???s properties (of interest) resemble those of a target population
2. Randomness is not sufficient
3. Some philosophies do not view representativeness as desirable or relevant.
4. Software people are expensive
5. Real data is often under NDA
6. Software projects cover a vast universe of domains and contexts
7 ... (crowd sourcing anecdote)

----
# Bad Smells in Software Samples
??? Incorrectly using the term ???random??? to mean arbitrary.
??? Arguing that a convenience sample of software projects is representative because they are ???real-world??? projects.
??? Assuming that a small sample is representative because it is random.
??? Assuming that a large random sample is representative despite being selected from an obviously biased sampling frame.
??? Implying that results should generalize to large populations without any claim to having a representative sample.
([Baltes and Ralph](https://arxiv.org/pdf/2002.07764.pdf))

----
# Exercise
Design a sampling strategy for the inferential question we considered earlier, i.e.
> (1) You are the manager of 10 teams at Spotify doing software development. Each team uses their own tools; some use Slack, others use email and IRC. Is there a connection between Slack use and team reported productivity?

and

> (2) You are looking to see how many bugs exist in primarily machine-learning software (e.g., building and training ML models with Tensorflow) vs other types of software


----
## Data Analytics Methodology Problems

![width:300px](bad-smells.png)

----
1. Not interesting
2. Not using related work
3. Deprecated or suspect data
4. Inadequate Reporting
5. Underpowered
6. Emphasizing p-values
7. Misunderstanding data distributions
8. No visualization
9. No stability analysis
10. Not tuning
11. Over complicating
12. No rationale for learner choice
   
See also [ACM SigSOFT Empirical Review Standards](https://github.com/acmsigsoft/EmpiricalStandards)

----
# Git Promises and Perils
- **promises**: analysis Git enables
- **perils**: dangers with relying on Git
*in general: the data we see may not be an impartial log of events*
- Git new on the scene at the time (replacing SVN/CVS)
- Git is distributed
- Git histories can be cleaned
  - delete/omit commits, squash / condense commits into one
  - lose the rich history of how a change was arrived at (Tesla example)
- Git branches are potentially confusing 
----
# Github Promises and Perils
- Daniel's Venn diagram of Github projects, public, useful
- Repos =/= project (forks for PRs)
- Many projects inactive or uninteresting
- Some repos are for data storage or personal use
- PRs used in different ways.
* PRs don't record all commits.
* Most pull requests appear as non-merged even if they are actually merged.
* Many active projects do not conduct all their software development in GitHub

----
## Other Challenges
- temporal pollution
- [likes and stars](https://www.sciencedirect.com/science/article/pii/S0164121218301961)
- bots
- gender and demographics


----
## Daniel and background
- formal spec unpublishable
- MSR and change history in OSS more powerful 
- compilers used to cost $$ 
- RMS and OSS actually useful
- OSS gives you history
- impossible to verify empirical results from closed source
- 2000-2015 the golden era of MSR
- triangle of research includes OSS, IP and MSR
- empirical SE is tricky because we observe few and try to conclude for many e.g. for Apache SF
- crisis: arrival of ML
- use ML/AI for everything in SE. Delta papers - to improve ROC
- out of sample prediction is never done well
- predicting defects is not that useful what helps dev
- how do we trust the ML output
  - compare Tesla and observing devs and changes. Not in real time. All of the interesting data is lost when in the repo. Failuares do not appear
  - Zurich and IDE recovery
- observability of driving is much higher than SW
- what are the benefits of seeing the flaws?
  - changes in how ML helps user vs how it helps devs
  - how can it help the developer 
    - e,.g IDE features the editor can learn my approach e.g. to show my morning summary
    - maybe mining a "Repo" is less useful than mining individual approaches
    - migrating APIs - could leanr from big data to know how to migrate
    - future; not how to use ML, but rather how to effectively build software with ML components
      - other one is security 
  - Github: what types of repos should it host? should there be another spot for personal repos
    - great Venn diagram of research available repos (private, on Github, and willing to use Git)

Add survey on what basics to cover


