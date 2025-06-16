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

## Learning Objectives

After this class students are able to:

1. Use the scientific method to separate fact from fiction in software engineering claims.
2. Demonstrate a grasp of basic data science workflows - acquiring data, cleaning it, analyzing it, and generating a report.
3. Use and understand machine learning approaches such as linear regression, dimensionality reduction in the context of software engineering problems.
4. Summarize SE data science papers, quickly identifying their key contributions.
5. Understand the ethical implications of the data science they are doing. 

# Books and Readings

There are no mandatory texts. We will cover public tutorials and papers. I occasionally refer to chapters from the following, all available "free" from the Uvic library: 

1. **[Data Mining from Scratch](https://search.library.uvic.ca/discovery/fulldisplay?docid=cdi_askewsholts_vlebooks_9781491904404&)** . No libraries in this one ...  examples in Python. Joel Grus  OReilly 2019.
2. [**R for Data Science**](https://r4ds.had.co.nz/tibbles.html). A nice intro showing the R approach to importing, cleaning, visualizing data. Hadley Wickham & Garrett Grolemund.  OReilly 2017, is under revision. This version is freely available as HTML.
3. [**Statistical Rethinking**](https://xcelab.net/rm/statistical-rethinking/). Bayesian approach to statistical inference with excellent and gentle intro. Available via the library e-collection. Also see his excellent Youtube recordings and Github material. Richard McElreath. CRC Press 2020 (2nd).
4. [**Regression and Other Stories**](https://avehtari.github.io/ROS-Examples/). Intro to regression and inference with clear examples. Gelman, Hill, Vehtari. Cambridge 2021.

# Schedule and Topics

Due dates are all on Brightspace. Class format will be lectures and short in class exercises, including discussion of the readings (which you must do before class). 

## Summer 2025
Class in Summer 2025 will be 2x3 hour sessions each week. That's a lot of class time. The plan will be to take 2 short breaks (5 mins) and one longer break (20 mins) at appropriate times. You should come to class prepared to follow along on your computer or tablet; most of the latter half will be in class exercises. Each class has assigned readings for each module; those readings are to be done prior to class. 

| Day     | Module                                                                                                   | Due                                                                                            |
| ------- | -------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------- |
| July 4  | [Intro](modules/intro/README.md)                                                                         |                                                                                                |
| July 9  | [AI4SE](modules/AI4SE/README.md)                                                                         |                                                                                                |
| July 11 | [Early Approaches and Problems](modules/early-problems/README.md)                                        | Quiz: Early Approaches Readings                                                                |
| July 16 | [Basic stats](modules/basics/README.md)                                                                     | [Project proposal](project/project-proposal.md)                                                |
| July 18 | *Project work - no class*                                                                                | [Assn 1 - basic DS](Assignments/assignment1.md)                                                |
| July 23 | [Bayes](modules/bayes/README.md)                                                                         |                                                                                                |
| July 25 | [Ethics](modules/ethics/README.md)                                                                          |                                                                                                |
| July 30 | [LLMs for SE](modules/llm/README.md)                                                                     | Quiz: LLM Readings                                                                             |
| Aug 1   | *Project work - no class*                                                                                | [Assn 2 - Black Mirror](assignment2.md) • [Interim project report](project/project-interim.md) |
| Aug 6   | [LLMs for SE](modules/llm/README.md) cont.                                                               |                                                                                                |
| Aug 8   | [Traceability • Clones](modules/traceability-clone/README.md) • [Cost](modules/cost-defect/README.md)    | Quiz: Traceability Readings                                                                    |
| Aug 13  | [Bug Localization/Triage](modules/bugs/README.md)                                                        | Quiz: Bug Readings                                                                             |
| Aug 15  | [Analysing Text Discussions](modules/NLP/README.md) / [Qualitative Data in SE](modules/coding/README.md) | Quiz: Text Analysis Readings [Assn 3 - Bayes](assignment3.md)                                  |
| Aug 20  | Demos/Project presentations                                                                              | [Project presentation](project/project-presentation.md)                                        |
| Aug 23  | no class                                                                                                 | [Final project report](project/project-final.md)                                               |
|         |                                                                                                          |                                                                                                |

# Assignments

See the [assignments page](assignments/README.md). Most details (deliverables, deadlines, rubrics) are on Brightspace.

# Readings and Quiz

Each week there are several readings/videos. Everyone must do the readings before class. There will be a short quiz on the readings, focused on analysis and synthesis of the papers (i.e., not just memorizing what the paper results were). These quizzes will be aimed at 8 minutes and everyone will have 16 minutes to do them. 

# Project

The [project](project/README.md) is a semester long SE data science project tackling an SE-specific problem, using techniques discussed in class. See the [project page](project/README.md) for details.

# Assessment

## Undergrads (SENG 404)

| Category      | Value |
| ------------- | ----- |
| Project       | 45%   |
| Assignments   | 40%   |
| Paper quizzes | 15%   |

## Grads (CSC 504)

| Category            | Value |
| ------------------- | ----- |
| Project             | 45%   |
| Assignments         | 30%   |
| Paper presentations | 15%   |
| Paper quizzes       | 10%   |

Assignment/project expectations will be higher for graduate students than undergraduate students.

Course marks will be distributed via Brightspace.

# Instructors

* [Neil Ernst](http://neilernst.net), instructor. Please message me to set up office hours for a meeting (Teams or email).

Please use Teams to message the TAs first with programming questions and group issues. Direct personal issues to the instructor, nernst@uvic.ca

# Mechanics and Learning Tools

The class will use [Github](https://github.com/UVic-Data-Science-for-SE) (course notes, slides), Teams (blogs, discussion, chat) and Brightspace (assignment posting, grades). Grades and any interviews or videos are distributed via Brightspace for privacy compliance.

This course is a synchronous in-person-only offering. I will attempt to record the lectures, but the cameras are not great, and the class has discussions etc when I will turn off the recording.

Many course activities (such as group design activities, chat sessions) will expect synchronous participation (i.e. at the scheduled time). Students should plan to attend all course components.
Courses will not be able to accommodate personal scheduling issues, including time zone variations (from Pacific Daylight time). 

## Creating Course Material
I use [Quarto](https://quarto.org) to create the HTML slides for the course. All the notes are in Quarto Markdown, a text format, and readable directly on Github. If you would like to generate PDFs instead, clone the repo to your machine, and in the top directory, run `quarto render --to pdf`. This will also interpret all the R commands anew, so you should also have R (v 4.4.3) installed. I didn't have good luck with R v 4.5 and these libraries.

Running R, and then inside R running `renv::restore()` will get all the relevant libraries installed. 

[CmdStanR](https://github.com/stan-dev/cmdstanr?tab=readme-ov-file#installation) and [`rethinking`](https://github.com/rmcelreath/rethinking?tab=readme-ov-file#installation) need special install steps, documented in the links to those libraries. 

# DEI still matters
The university and the Faculty of Engineering has a strong mandate to support Equity, Diversity and Inclusion: https://www.uvic.ca/engineering/about/equity/index.php
We as a teaching team will do what we can to create a positive, safe, and supportive environment for you to participate in all components of this course offering. I (the instructor) appreciate all feedback from you and hope that you feel free to message me to voice concerns or to arrange a time to discuss virtually or in-person.

You are expected to be respectful of other students and the instructor/TAs: minimize non-class discussions and activities (such as scrolling TikTok), participate by providing input, and asking questions using inclusive language and behavior.

# Integrity
Strict monitoring of academic integrity will be performed in this course for any work submitted for marks. See course component descriptions and Course Policies and Guidelines for details on academic integrity expectations. Substantiated academic integrity violations will be referred to the Department's Academic Integrity Committee which will determine penalty and ensure a record of the violation is kept with the university.

## AI supported work
You are expected to use generative AI (ChatGPT, Copilot, Claude, Cursor etc. etc.) in this course except where explicitly forbidden (mainly, because it will get in the way of you actually learning and understanding the concepts!). In fact, some assignments will require it. Learning to use Al is an emerging skill, and I provide a tutorial in the 2nd class about how to use them. 

I am happy to meet and help with these tools during office hours or after class. If you are struggling to access an AI tool financially, please meet with me so we can arrange something. 

Be aware of the limits of AI tools: 

* If you provide minimum effort prompts, you will get low quality results. You will need to refine your prompts in order to get good outcomes. This will take work.
* Don't trust anything it says. If it gives you a number or fact, or writes code that looks really good, assume it is wrong unless you either know the answer or can check in with another source. **You are responsible for any errors** or omissions of the tool. 
* It works best for topics you understand. So learn the topics. This will require discipline to not default to using the AI all the time. 
* AI is a tool, but one that you need to acknowledge using. Please include a paragraph at the end of any assignment that uses AI explaining what you used the AI for and what prompts you used to get the results. Failure to do so is in violation of academic integrity policies. 
* Be thoughtful about when this tool is useful. Don't use it if it isn't appropriate for the case or circumstance.

(derived from https://www.oneusefulthing.org/p/my-class-required-ai-heres-what-ive)

# License

This work is licensed under a [Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License](http://creativecommons.org/licenses/by-nc-sa/4.0/).

