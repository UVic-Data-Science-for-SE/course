#  Data Science for Software Engineering

See the [HEAT course syllabus](https://heat.csc.uvic.ca/coview/outline/2021/Fall/SENG/480b) for all mark weights and course policies, textbooks, etc. The syllabus also contains the important information on course communication and schedules and COVID information. Note that all three sections share the same syllabus.

Course content will be mostly based on paper discussions with some more technical lecture sessions on specific tools. Currently the plan is to mostly convene in person. [Email me](mailto:nernst@uvic.ca) if you think you may miss lectures due to travel restrictions or other reasons.

<!--The first part of the course will be more lecture based, establishing some foundations in the topics taught and explored in this course.-->
<!--The second part of the course will be workshop based, with guest speakers and ample activities to drill into specific topics more deeply. The workshops will be on the following topics: code assessment techniques, knowledge sharing and collaboration, continuous software engineering, diversity and inclusion in software engineering, software engineering productivity, and ethics and reliability of empirical research in software engineering.-->

# Course Overview and Learning Objectives

Software development activities (expansively defined as requirements, testing, deployment, design, development ,... ) generate a lot of raw quantitative data (and qualitative data as well, but that is a [separate course](https://github.com/margaretstorey/EmseUvic2020). We can use what are now cheap and readily available tools—machine learning classics like regression, but also deep learning, optimization, NLP—to try and make sense of this data. Thus this class is essentially about how we can use *data science* to analyze software data, in order to predict, understand, improve software practices. This is also known as ML4SE, and might be contrasted with SE4ML, the application of software engineering practices to machine learning and data science.

Some basic questions we might start with (h/t to [Greg](https://third-bit.com/2019/05/30/software-engineering-revisited/)):

1. How many projects written in Python are on Github (filtering student projects, dead projects, forks)?
2. Is Java better than C? 
3. Which programmer is more productive?
4. What file in my project has the most bugs? 
5. How long will it take to write this code?

### Learning Objectives

After this class students are able to:

1. Use the scientific method to separate fact from fiction in software engineering claims.
2. Demonstrate a grasp of basic data science workflows - acquiring data, cleaning it, analyzing it, and generating a report.
3. Use and understand machine learning approaches such as linear regression, dimensionality reduction in the context of software engineering problems.
4. Summarize SE data science papers, quickly identifying their key contributions.
5. Understand the ethical implications of the data science they are doing. 

# Books

There are no mandatory texts. We will cover public tutorials and papers. However, you might like learning from books - books are awesome. 

| **Data Mining: Practical Machine Learning Tools and Techniques (Fourth Edition)** |
| ------------------------------------------------------------ |
 | Ian H. Witten, Eibe Frank, Mark A. Hall, Christopher J. Pal  |
 | Morgan Kaufmann (2016) , ISBN: 0128042915 |
| [Data Mining from Scratch](https://www.amazon.com/Data-Science-Scratch-Principles-Python/dp/1492041130/) |
| No libraries in this one ...  examples in Python |
 | Joel Grus |
 | OReilly 2019 |
 | [**R for Data Science**](https://r4ds.had.co.nz/tibbles.html) | 
 | A nice intro showing the R approach to importing, cleaning, visualizing data |
 | Hadley Wickham & Garrett Grolemund| 
 | OReilly 2017 |
 | [**Statistical Rethinking**](https://xcelab.net/rm/statistical-rethinking/) | 
 | Bayesian approach to statistical inference with excellent and gentle intro. Available via the library e-collection. | 
 | Richard McElreath |
| CRC Press 2020 (2nd) | 

# Schedule and Topics

Due dates are all on Brightspace. Tuesday and Wednesday will be lectures and short in class exercises, including discussion of the readings (which you must do before class). Friday will be dedicated to demos and tutorials of the techniques covered earlier that week.

The first few weeks will be a brief intro to some data science approaches particularly useful in analyzing software data. The remaining part of the course will look at specific data science questions. 

## [Introduction](slides/intro.pdf) [Sep 7-11]

**Readings**

* [Cross-tool logs at Google](https://research.google/pubs/pub49446/)
* [Watch Codex demo](https://www.youtube.com/watch?v=SGUCcjHTmGY)
* (Optional) [Facebook and static analysis](https://research.fb.com/wp-content/uploads/2018/05/from-start-ups-to-scale-ups-opportunities-and-open-problems-for-static-and-dynamic-program-analysis.pdf)

**Exercises**

* Apply to install Copilot and/or access to OpenAI
* Go through Copilot and [Codex demos](https://beta.openai.com/playground) and (ideally) do them yourself.

----

## [Early Approaches](slides/early.md) [Sep 14-17]

How the field started; lessons from the past. Taylorism. Is SE "engineering" or factory work? Contrarianism.

[How to read a paper (from ResearchSkills class)](https://github.com/neilernst/ResearchSkillsUVic/blob/main/resources/reviewing/M4%20Reading.md#efficiently-reading-a-paper)

**Readings**

* [Tu and Godfrey, Linux evolution](https://ieeexplore.ieee.org/document/883030) 
* [Kitchenham, Empirical SE Guidelines](http://people.ucalgary.ca/~far/Lectures/SENG421/PDF/Guidelines.pdf)
* [10 X productivity study](https://dl.acm.org/doi/10.1145/362851.362858) and [critiques](https://www.construx.com/blog/the-origins-of-10x-how-valid-is-the-underlying-research/)
* [Interview with Bossavit](https://blog.fogbugz.com/10x-programmer-and-other-myths-in-software-engineering)

**Optional:**

- [The Mythical Man-Month](https://en.wikipedia.org/wiki/The_Mythical_Man-Month)
- [Peopleware](https://en.wikipedia.org/wiki/Peopleware:_Productive_Projects_and_Teams)

----
## Techniques: [Basic Statistical Inference from a  Bayesian Perspective](slides/bayes.md) [Sep 20-24, 27, 28]

One approach building inferential analyses is to use a frequentist, hypothesis testing approach where you examine the long-run probability of the data-generating mechanisms to assess how likely the results are under a null hypothesis.

The alternative is to set some limits on what you feel is likely to be true a priori, model the data generating process statistically, i.e. with a probability distribution, and then run Bayes's theorem $$P(A|B) = (P(B|A) * P(A))/P(B)$$ over the data collected. This produces the posterior probability of the parameters of interest, allowing for inferences to be drawn. 

We will start with some motivation from McElreath: https://speakerdeck.com/rmcelreath/l01-statistical-rethinking-winter-2019 and associated videos

### Readings

* Furia, Torkar, Feldt, [Applying Bayesian Analysis Guidelines to Empirical Software Engineering Data: The Case of Programming Languages and Code Quality](https://arxiv.org/abs/2101.12591)
* Ernst, [Thresholds](https://arxiv.org/abs/1804.02443)
* McElreath, [Statistical Rethinking ch 2](https://learning-oreilly-com.ezproxy.library.uvic.ca/library/view/statistical-rethinking-2nd/9780429639142/xhtml/10_Chapter02.xhtml) (netlink id required) and/or watch his [lecture video](https://www.youtube.com/watch?v=4WVelCswXo4)
* (opt) Ray, Devanbu, Filkov, ["Rebuttal to Berger et al 2019"](https://arxiv.org/abs/1911.07393) - a rebuttal to a replication on code quality and language choice on Github.
* (opt) Dorn, Apel, [Mastering Uncertainty in Performance Estimations of Configurable Software Systems](https://ieeexplore.ieee.org/stamp/stamp.jsp?arnumber=9286072) 
* (opt) [McElreath, Statistical Rethinking](https://xcelab.net/rm/statistical-rethinking/) (a super approachable, gentle introduction with R examples, but also translated into Julia and Python)
* (opt) [Gelman, Bayesian Data Analysis](http://www.stat.columbia.edu/~gelman/book/) (book)
* https://www.bayesrulesbook.com

### Exercises 

* Follow the [tutorial](https://github.com/torkar/icse_tutorial) notebook; we will go over it in class. 
* Get familiar with [RStudio notebooks](https://blog.rstudio.com/2016/10/05/r-notebooks/) as that is what we will use for Assignment 1. 
* Make sure when you import the ICSE one, you type

```R
install.packages(c("coda","mvtnorm","devtools","loo", "here", "foreign", "cmdstan","dagitty"))
devtools::install_github("rmcelreath/rethinking")
```


----
## Techniques: [The Nature of SE Data](slides/problems.md) [Oct 1, 5,6]

Basic challenges with SE data mining.

**Readings**

* [Bad Smells in Software Analytics Papers](https://arxiv.org/abs/1803.05518)
* [Promises and Perils of Mining Git](https://www.researchgate.net/publication/232621717_The_Promises_and_Perils_of_Mining_Git)
* Aranda and Venolia, [The secret life of bugs: Going past the errors and omissions in software repositories](https://www.microsoft.com/en-us/research/wp-content/uploads/2016/02/secret.pdf)
* (Opt) [Promises and Perils of Mining Github](https://kblincoe.github.io/publications/2014_MSR_Promises_Perils.pdf)
* (opt) [Threats of Aggregating Software Repository Data](https://www.cs.mcgill.ca/~martin/papers/icsme2018.pdf) 
* (opt) [Sampling in SE Research](https://arxiv.org/pdf/2002.07764.pdf)
**Exercises**

----
## Techniques: [Data Mining Basics include search and optimize](src/dm_basic/dm_basic.Rmd) [Oct 8, 12-15]

See the linked notebook. We will go over basic approaches like correlation analysis, regression etc.

## Techniques: [Ethical Considerations in Data Science 4 SE](slides/ethics.md) [Oct 19, 20, 22]

Data mining, data science, and machine learning open up problematic (and interesting) research questions and obligations. We will go over some of the basic problems, some approaches to resolve those, and discuss current issues.

### Readings:

* Gold, Krinke, [Ethical Mining](https://doi.org/10.1145/3379597.3387462)
* https://theconvivialsociety.substack.com/p/the-questions-concerning-technology 

##### Optional 
* [The Tuskegee Study](https://www.mcgill.ca/oss/article/history/40-years-human-experimentation-america-tuskegee-study	)
* Casey Fiesler's twitter feed (and [post that inspired](https://howwegettonext.com/the-black-mirror-writers-room-teaching-technology-ethics-through-speculation-f1a9e2deccf4) this class)
* [RetractionWatch](https://retractionwatch.com)
* [ACM Policies](https://www.acm.org/publications/policies)
  * [Does ACM's code of ethics change decision making](https://dl.acm.org/doi/10.1145/3236024.3264833) 
* [What we learned from NeurIPS 2020 reviewing process](https://neuripsconf.medium.com/what-we-learned-from-neurips-2020-reviewing-process-e24549eea38f)

**Exercises**

* Assignment 2, on brightspace
* (Opt) Watch [The Social Dilemma](https://www.documentaryarea.tv/player.php?title=The%20Social%20Dilemma)

----
## Applications 1 : Search-based SE and SE vs Non-SE Data

- Harman, [Search-Based SE](https://www.sciencedirect.com/science/article/pii/S0950584901001896)
- Novielli, [Sentiment trained on nonSE data](https://arxiv.org/abs/2004.00300)
- (opt) Binkley, [The need for software specific NL techniques](https://link.springer.com/article/10.1007/s10664-017-9566-5)
- (opt) McMinn, [Search-based software testing](https://mcminn.io/publications/c18.pdf)
- (opt) Menzies, [SSBSE notes](https://github.com/txt/ase16/blob/master/doc/talk4ssbse.md)

### Readings: 


Maybe: Q&A: Tim Menzies

----
## Applications 2: Cost Estimation and Clone Detection

Q: How much/how long will it take to build/deliver this code? 

### Readings

* Boehm, [COCOMO II](https://link.springer.com/content/pdf/10.1007/BF02249046.pdf)  **(Sections 1-4 only)**
* Menzies, [Negative Results for software effort estimation](https://link.springer.com/content/pdf/10.1007/s10664-016-9472-2.pdf) (replication of COCOMO)
* Roy, Chanchal, [A Survey on Clone Detection](https://plg.uwaterloo.ca/~migod/846/papers/roy-CloningSurveyTechReport.pdf) **Section 1-5, and then 16-17.**

----
## Applications 3: Traceability and Refactoring Detection

### Readings 

Cleland-Huang, [A machine learning approach for tracing regulatory codes to product specific requirements](https://dl.acm.org/doi/pdf/10.1145/1806799.1806825)
* Guo, [Semantically Enhanced Software Traceability using DL Techniques](https://ieeexplore.ieee.org/abstract/document/7985645)
* Germán, [`cregit`: token-level blame information in `git` version control repositories](https://link.springer.com/article/10.1007/s10664-019-09704-x)

Maybe: Q&A: Nan Niu

----
## Applications 4: Topic Modeling for SE 

### Readings
* Barua, [What Are Developers Talking About? An Analysis of Topics and Trends in Stack Overflow](https://cs.uwaterloo.ca/~m2nagapp/courses/CS846/1171/papers/barua_ese12.pdf) 
* Agrawal, [What is Wrong with Topic Modeling](https://www.researchgate.net/profile/Tim-Menzies/publication/307303102_What_is_Wrong_with_Topic_Modeling_and_How_to_Fix_it_Using_Search-based_SE/links/57e4a55a08ae9e8425a25dd5/What-is-Wrong-with-Topic-Modeling-and-How-to-Fix-it-Using-Search-based-SE.pdf)

## Applications 5: Code as Language 
### Readings
* Hindle et al., [On the Naturalness of Software](https://dl.acm.org/doi/10.5555/2337223.2337322)
* [Codex](https://arxiv.org/pdf/2107.03374.pdf)
* Xu, Vasilescu, Neubig, ["In IDE Code Generation from Natural Language"](https://arxiv.org/abs/2101.11149) [sections 1-4, 8,9]
* (opt) Karampatsis, [Big Code != Big Vocabulary](https://ieeexplore.ieee.org/abstract/document/9284032) 
Autocomplete.
----
## Applications 6: Automated Program Repair

### Readings

* Marginean, [SapFix](https://research.fb.com/publications/sapfix-automated-end-to-end-repair-at-scale/)
* LeGoues, [Survey of APR](http://www.cs.cmu.edu/~clegoues/docs/legoues-cacm2019.pdf) • [podcast audio](https://www.youtube.com/watch?v=YPfyRT80VJI) (opt)

## <!--Techniques: Causal analysis in SE (maybe)-->

<!--Bob Stoddard and GCMs-->

----
# Assignments

Grads have to do 4 assignments, same total weight.  Assignment details are in the corresponding assignment page on Brightspace.

# Readings

Each week there are 2-3 readings. Everyone must do the readings before the Tuesday class. Summarize the readings in Brightspace and [post those to the class](blogposts.md) Brightspace forum. You are also expected to comment on other blog posts as part of the class participation mark, as well as engage in discussion in the class itself. 

# Project

The [project](project.md) is a semester long replication of an MSR/ICSE/ASE paper using artifacts. Projects may be completed in groups up to 3.

# Assessment

| Category                                          | Value |
| ------------------------------------------------- | ----- |
| Project                                           | 45%   |
| Assignments (undergrad: 3 * 10%) (Grad: 4 * 7.5%) | 30%   |
| Paper summary blog posts                          | 10%   |
| Participation                                     | 15%   |

**Course participation**: 15%
Based on class discussions, forum posts, and group participation. Missing a few classes will NOT hurt your participation mark. If you are sick please stay home.

**Blog Posts**: 10% Assessed using a series of short, 400 word or so forum posts. See the description of how to do [blog posts](blogposts.md).

Assignment/project expectations will differ for graduate students and undergraduate students.

Course marks will be distributed via Brightspace.

## Instructors

* [Neil Ernst](http://neilernst.net), instructor. Please message me for office hours per HEAT (TBD) or request a Zoom meeting on Brightspace or email. 
* TBD

Please use Brightspace to message the TA first with programming questions and group issues. Direct personal issues to the instructor, nernst@uvic.ca

## Mechanics

The class will use [Github](https://github.com/SENG330) (course notes, slides) and Brightspace (discussions, assignment posting, grades). 

Grades and any interviews or videos are distributed via Brightspace for privacy compliance.

This course is a mostly held as a synchronous in-person-only offering.

<!--Students should expect that the course experience offered by this on-line course will be a variation of the on-campus courses. Learning outcomes will be altered and met using on-line methods.-->

Many course activities (such as group design activities, chat sessions) will expect synchronous participation (i.e. at the scheduled time).
Students should plan to attend all course components.
Courses will not be able to accommodate personal scheduling issues, including time zone variations (from Pacific Daylight time). Online sessions, if any, will be hosted using Zoom video conferencing sessions, some of which will be recorded.

To access Zoom you will be required to login through the UVic portal ([[https://uvic.zoom.us](https://uvic.zoom.us/)]) and you consequently will not be anonymous.

The university and the Faculty of Engineering has strong mandate to support Equity, Diversity and Inclusion: https://www.uvic.ca/engineering/about/equity/index.php
We as a teaching team will do what we can to create a positive, safe, and supportive environment for you to participate in all components of this course offering. I (the instructor) appreciate all feedback from you and ask that you feel free to message me to voice concerns or to arrange a time to discuss virtually in-person.

You are expected to be respectful of other students and the instructor/TAs: mute your microphone if you are not talking, participate by providing input, and asking questions using inclusive language and behavior.

Strict monitoring of academic integrity will be performed in this course for any work submitted for marks. See course component descriptions and Course Policies and Guidelines below for details on academic integrity expectations. Substantiated academic integrity violations will be referred to the Department's Academic Integrity Committee which will determine penalty and ensure a record of the violation is kept with the university.

## License

This work is licensed under a [Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License](http://creativecommons.org/licenses/by-nc-sa/4.0/).

[![Alt text](https://camo.githubusercontent.com/f05d4039b67688cfdf339d2a445ad686a60551f9891734c418f7096184de5fac/68747470733a2f2f692e6372656174697665636f6d6d6f6e732e6f72672f6c2f62792d6e632d73612f342e302f38387833312e706e67)](https://camo.githubusercontent.com/f05d4039b67688cfdf339d2a445ad686a60551f9891734c418f7096184de5fac/68747470733a2f2f692e6372656174697665636f6d6d6f6e732e6f72672f6c2f62792d6e632d73612f342e302f38387833312e706e67)
