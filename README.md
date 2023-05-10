#  Data Science for Software Engineering

See the [HEAT course syllabus](https://heat.csc.uvic.ca/coview/course/2023051/SENG480B) for all mark weights and course policies, textbooks, etc. The syllabus also contains the important information on course communication and schedules. Note that all three sections share the same syllabus.

Course content will be mostly based on paper discussions with some more technical lecture sessions on specific tools. Attendance and engagement in class is mandatory and essential. [Email me](mailto:nernst@uvic.ca) if you think you may miss a lecture.

# Course Overview and Learning Objectives

Software development activities (expansively defined as requirements, testing, deployment, design, development ,...) generate a lot of raw quantitative data (and qualitative data as well, but that is a [separate course](https://github.com/margaretstorey/EmseUvic2020)). We can use what are now cheap and readily available tools—machine learning classics like regression, but also deep learning, optimization, NLP—to try and make sense of this data. Thus this class is essentially about how we can use *data science* to analyze software data, in order to predict, understand, improve software practices. This is also known as ML4SE, and might be contrasted with SE4ML, the application of software engineering practices to machine learning and data science.

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

There are no mandatory texts. We will cover public tutorials and papers. I occasionally refer to chapters from the following, all available "free" from the Uvic library: 

1. **[Data Mining from Scratch](https://search.library.uvic.ca/discovery/fulldisplay?docid=cdi_askewsholts_vlebooks_9781491904404&)** . No libraries in this one ...  examples in Python. Joel Grus  OReilly 2019.
2. [**R for Data Science**](https://r4ds.had.co.nz/tibbles.html). A nice intro showing the R approach to importing, cleaning, visualizing data. Hadley Wickham & Garrett Grolemund.  OReilly 2017, is under revision. This version is freely available as HTML.
3. [**Statistical Rethinking**](https://xcelab.net/rm/statistical-rethinking/). Bayesian approach to statistical inference with excellent and gentle intro. Available via the library e-collection. Also see his excellent Youtube recordings and Github material. Richard McElreath. CRC Press 2020 (2nd).
4. [**Regression and Other Stories**](https://avehtari.github.io/ROS-Examples/). Intro to regression and inference with clear examples. Gelman, Hill, Vehtari. Cambridge 2021.

# Schedule and Topics

Due dates are all on Brightspace. Class format will be lectures and short in class exercises, including discussion of the readings (which you must do before class). Class in Summer 2023 will be a single 3 hour session. The plan will be to take 2 short breaks (5 mins) and one longer break (20 mins) at appropriate times. You should come to class prepared to follow along on your computer or tablet.

| Week    | Topic                                                                                     | Due                            |
| ------- | ----------------------------------------------------------------------------------------- | ------------------------------ |
| May 9   | [Course Intro and Data Science Basics](modules/intro-basics/README.md)                    |                                |
| May 16  | [Early Approaches and SE Data Problems](modules/early-problems/README.md)                 | A1                             |
| May 23  | [Statistical Modeling and Bayesian Inference](modules/bayes/README.md)                    | Project Proposal               |
| May 30  | [Ethical SE Data Science](modules/ethics/README.md)                                       |                                |
| June 6  | [Applications I: Simple Data Mining](modules/simpleDM/README.md)                          | A2; Blog 1                     |
| June 13 | Applications II: [Search Based SE](modules/sbse/README.md)                                | Blog 2                         |
| June 20 | Applications III: [Traceability and Refactoring](modules/traceability-refactor/README.md) | Blog 3; Project Interim report |
| June 27 | [Applications IV: Topic Modeling and NLP](modules/NLP/README.md)                          | Blog 4;                        |
| July 4  | Reading Break                                                                             |                                |
| July 11 | [Applications V: Large Language Models for SE](modules/llm/README.md)                     | A3; Blog 5                     |
| July 18 | [Applications V: Large Language Models for SE](modules/llm/README.md) (part the second)   |                                |
| July 25 | Project presentations                                                                     | A4 (grads); Project Report     |

# Assignments

See the [Assignments page](Assignments/README.md). Note: grad students have to do 4 assignments, with the same total weight.  

# Readings

Each week there are 2-3 readings. Everyone must do the readings before the Tuesday class. **For the Applications topics (second half of term)**, summarize the readings, add your insights, and [post those to the class](blogposts.md) Teams channel. You are also expected to comment on other blog posts as part of the class participation mark, as well as engage in discussion in the class itself. 

# Project

The [project](project.md) is a semester long SE data science project tackling an SE-specific problem, using techniques discussed in class. See the [project page](project.md) for details.

# Assessment

| Category                                          | Value |
| ------------------------------------------------- | ----- |
| Project                                           | 45%   |
| Assignments (undergrad: 3 * 10%) (Grad: 4 * 7.5%) | 30%   |
| Paper summary blog posts                          | 15%   |
| Participation                                     | 10%   |

**Course engagement**: 10%
Based on class discussions, forum posts, and group participation. We will use Sli.do or similar tool to enable participation for those less comfortable with speaking in class. At the midway point, I will post interim engagement marks so you can assess your standing. Not coming to class, not doing readings, failing to attend group meetings, are all good ways to get a 0 for this component. 

**Blog Posts**: 15% Assessed using a series of short, 400 word or so forum posts. See the description of how to do [blog posts](blogposts.md).

Assignment/project expectations will differ for graduate students and undergraduate students.

Course marks will be distributed via Brightspace.

## Instructors

* [Neil Ernst](http://neilernst.net), instructor. Please message me for office hours per HEAT (TBD) or request a Zoom meeting on Brightspace or email. 
* TBD

Please use Teams to message the TAs first with programming questions and group issues. Direct personal issues to the instructor, nernst@uvic.ca

## Mechanics

The class will use [Github](https://github.com/UVic-Data-Science-for-SE) (course notes, slides), Teams (blogs, discussion, chat) and Brightspace (assignment posting, grades). 

Grades and any interviews or videos are distributed via Brightspace for privacy compliance.

This course is a synchronous in-person-only offering.

Many course activities (such as group design activities, chat sessions) will expect synchronous participation (i.e. at the scheduled time).
Students should plan to attend all course components.
Courses will not be able to accommodate personal scheduling issues, including time zone variations (from Pacific Daylight time). Online sessions, if any, will be hosted using Zoom video conferencing sessions, some of which will be recorded.

The university and the Faculty of Engineering has a strong mandate to support Equity, Diversity and Inclusion: https://www.uvic.ca/engineering/about/equity/index.php
We as a teaching team will do what we can to create a positive, safe, and supportive environment for you to participate in all components of this course offering. I (the instructor) appreciate all feedback from you and ask that you feel free to message me to voice concerns or to arrange a time to discuss virtually in-person.

You are expected to be respectful of other students and the instructor/TAs: mute your microphone if you are not talking, participate by providing input, and asking questions using inclusive language and behavior.

Strict monitoring of academic integrity will be performed in this course for any work submitted for marks. See course component descriptions and Course Policies and Guidelines below for details on academic integrity expectations. Substantiated academic integrity violations will be referred to the Department's Academic Integrity Committee which will determine penalty and ensure a record of the violation is kept with the university.

## AI supported work
You are permitted to use generative AI (ChatGPT, Copilot, MidJourney etc. etc.) in this course except where explicitly forbidden (mainly, because it will get in the way of you actually learning and understanding the concepts!). Any use of these assistants beyond simple grammar help **must be accompanied by a dedicated section in the assignment submission outlining how it was used and why it helped**.

## License

This work is licensed under a [Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License](http://creativecommons.org/licenses/by-nc-sa/4.0/).

[![Alt text](https://camo.githubusercontent.com/f05d4039b67688cfdf339d2a445ad686a60551f9891734c418f7096184de5fac/68747470733a2f2f692e6372656174697665636f6d6d6f6e732e6f72672f6c2f62792d6e632d73612f342e302f38387833312e706e67)](https://camo.githubusercontent.com/f05d4039b67688cfdf339d2a445ad686a60551f9891734c418f7096184de5fac/68747470733a2f2f692e6372656174697665636f6d6d6f6e732e6f72672f6c2f62792d6e632d73612f342e302f38387833312e706e67)
