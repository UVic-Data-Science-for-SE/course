#  Data Science for Software Engineering

See the [HEAT course syllabus](https://heat.csc.uvic.ca/coview/outline/2020/Fall/SENG/330) for all mark weights and course policies, textbooks, etc. The syllabus also contains the important information on course communication and schedules and COVID information. 

Course content will be lectures and readings. Currently the plan is to mostly convene in person. [Email me](mailto:nernst@uvic.ca) if you think you may miss lectures due to travel restrictions or other reasons.

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

There are no mandatory texts. We will cover public tutorials and papers. However, you might like learning from books - books are awesome. Two from the Data mining course might help:

| *Optional:* | Data Mining: Practical Machine Learning Tools and Techniques (Fourth Edition) |
| ----------- | ------------------------------------------------------------ |
|             | Ian H. Witten, Eibe Frank, Mark A. Hall, Christopher J. Pal  |
|             | Morgan Kaufmann (2016) , ISBN: 0128042915 |
| *Optional:* | Introduction to Data Mining (Second Edition) |
|             | Pang-Ning Tan, Michael Steinbach, Vipin Kumar  |
|             | Addison Wesley (2018) , ISBN: 9780133128901 |


# Schedule and Topics

Due dates are all on Brightspace. Tues and Wednesday will be lectures and short in class exercises, including discussion of the readings (which you should do before class). Friday will be dedicated to demos and tutorials of the tecnuqes covered earlier that week.

## [Introduction](slides/intro.pdf)

Why the topic matters; ethical considerations. 

**Readings**

* Applied data science - how FB/Google etc use data science in SE.
* Watch Codex demo
* Apply to install Copilot

## [Early Approaches](slides/early.pdf)

How the field started; lessons from the past.

**Readings**

* Tu and Godfrey, Linux evolution 
* 10 X productivity study

## Techniques: Basic Statistical Inference from a  Bayesian Perspective

### Readings 

* Feldt, Bayes in SE paper<br />
* Apel, Bayes for performance prediction 
* https://www.bayesrulesbook.com

## Techniques: Principle Components, Search, Optimization in SE

### Readings: Tim's ICSME keynote

## Techniques: Ethical Considerations in AI/ML 4 SE

https://theconvivialsociety.substack.com/p/the-questions-concerning-technology 

## Applications: Cost estimation

### Readings

Boehm, Software Engineering Economics. COCOMO. 

Menzies, replication of COCOMO

## Applications: Traceability

### Readings 

Cleland-Huang, NFR traceability. Guo, ICSE20.

## Applications: Search Based SE

### Readings

Harman, Search Based SE. Next Release Problem. Menzies, Optimize loop

Local lessons vs global lessons

KEYS

## Applications: NLP for SE (2 weeks)

### Readings

Topic modeling. Naturalness. OOV problem. Autocomplete.

## Applications: Automated Program Repair/Program Synthesis

### Readings

LeGoues, Survey of APR

## Techniques: Causal analysis in SE (maybe)

Bob Stoddard and GCMs

# Assignments

See [exercises/design-rubric.md](exercises/design-rubric.md) for details on exercises.

Grads have to do 5 assignments, same total weight.  

Assignment 1: BRMS and software data

Assignment 2: NLP and App Store data

Assign,emt 3: MOEA problem 

Assignment 4: deep learning for SE

Grad Assignment: take on one of the outstanding issues in DOR and get it to DONE

# Readings

Each week there are 2 readings. You should prepare two of those readings and do a brief extended abstract of them that we can discuss. Post those to the class Brightspace page. You are also expected to comment on other blog posts as part of the class participation mark. 

# Project

The project is a semester long replication of an MSR/ICSE/ASE paper using artifacts. Projects may be completed in groups up to 3.

# Assessment

| Category                                          | Value |
| ------------------------------------------------- | ----- |
| Project                                           | 45%   |
| Assignments (undergrad: 3 * 10%) (Grad: 4 * 7.5%) | 30%   |
| Paper summary blog posts                          | 10%   |
| Participation                                     | 15%   |

**Course participation**: 15%
Assessed through participation in assigned group activity submissions, participation in class (e.g., asking questions and contributing to discussions), and commenting on student blog posts. 

**Assignments**: 30%
There are four assignments in the course, each assignment is worth 7.5% (for a total of 30% of your final grade). 

**Project**: 55%
The project will be a substantial data science analysis of a software engineering problem of your choosing (with my guidance). The project will be completed in groups of 4 to 6 students (this may vary depending on course enrollment).

The grading breakdown is the same for undergraduate and graduate students, however, assignment/project expectations will differ.

Class attendance is required to pass the course (if you are sick, please let me know in advance of the lecture).

Course marks will be distributed via Brightspace.

## Instructors

* [Neil Ernst](http://neilernst.net), instructor. Please message me for office hours per HEAT (TBD) or request a Zoom meeting on Brightspace or email. 
* TBD

Please use Brightspace to message the TA first with programming questions and group issues. Direct personal issues to the instructor, nernst@uvic.ca

## Mechanics

The class will use [Github](https://github.com/SENG330) (course notes, slides) and Brightspace (discussions, assignment posting, grades). Students will have to register their Github username (either a permanent one or a throwaway) with the instructors. Those with an objection to using Github please contact the instructor for workarounds. All Github activity is private to the class organization. Please see the privacy notice.

Grades and any interviews or videos are distributed via Brightspace for privacy compliance.

This course is a mostly held as a synchronous in-person-only offering.

<!--Students should expect that the course experience offered by this on-line course will be a variation of the on-campus courses. Learning outcomes will be altered and met using on-line methods.-->

Many course activities (such as group design activities, chat sessions) will expect synchronous participation (i.e. at the scheduled time).
Students should plan to attend all course components.
Courses will not be able to accommodate personal scheduling issues, including time zone variations (from Pacific Daylight time). Online sessions will be hosted using Zoom video conferencing sessions, some of which will be recorded.

To access Zoom you will be required to login through the UVic portal ([[https://uvic.zoom.us](https://uvic.zoom.us/)]) and you consequently will not be anonymous.

Participation in this course requires reliable and consistent access to on-line technology: a computer (desktop or laptop) and an Internet connection.
It will not be possible to adjust the course expectations, due dates, or learning outcomes for students who do not have the technological means to complete the course. Course expectations (learning outcomes, due dates, etc.) will assume on-line technology, without exception.

The university and the Faculty of Engineering has strong mandate to support Equity, Diversity and Inclusion: https://www.uvic.ca/engineering/about/equity/index.php
We as a teaching team will do what we can to create a positive, safe, and supportive environment for you to participate in all components of this course offering. I (the instructor) appreciate all feedback from you and ask that you feel free to message me to voice concerns or to arrange a time to discuss virtually in-person.

You are expected to be respectful of other students and the instructor/TAs: mute your microphone if you are not talking, participate by providing input, and asking questions using inclusive language and behavior.

Strict monitoring of academic integrity will be performed in this course for any work submitted for marks. See course component descriptions and Course Policies and Guidelines below for details on academic integrity expectations. Substantiated academic integrity violations will be referred to the Department's Academic Integrity Committee which will determine penalty and ensure a record of the violation is kept with the university.

## License

This work is licensed under a [Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License](http://creativecommons.org/licenses/by-nc-sa/4.0/).

[![Alt text](https://camo.githubusercontent.com/f05d4039b67688cfdf339d2a445ad686a60551f9891734c418f7096184de5fac/68747470733a2f2f692e6372656174697665636f6d6d6f6e732e6f72672f6c2f62792d6e632d73612f342e302f38387833312e706e67)](https://camo.githubusercontent.com/f05d4039b67688cfdf339d2a445ad686a60551f9891734c418f7096184de5fac/68747470733a2f2f692e6372656174697665636f6d6d6f6e732e6f72672f6c2f62792d6e632d73612f342e302f38387833312e706e67)
