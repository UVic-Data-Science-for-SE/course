# Project Outline

*(Much of this outline taken from Dr Storey's EMSE course)*

The goal of this project is to take a software analytics question and provide a 10 page report summarizing the approach taken and conclusions drawn. Good examples will be papers published at MSR, ICPC, SANER and similar venues.

For this project, you will conduct a replication of an existing study published in a software engineering research venue, or you may wish to design a novel study.  The replication is likely to be a conceptual replication where you retest the same theoretical ideas or hypotheses, but with a different population, or different study design, different ways of manipulating or measuring variables.
A literal replication may also be acceptable, especially if you carefully follow the same steps and provide some kind of reflection and critique of the study (with perhaps suggestions of what you would do differently next time or if it worked well, how you might broaden the study in future).

## Teams 

The project should ideally be completed in teams of 3-4 students, but students can complete it alone or in pairs if they wish.  The main contribution from this project is about the insights you gained concerning the empirical aspects rather than new knowledge gained through the study. You **MAY NOT** mix graduate students and undergraduate students in your teams.

## Research Ethics

If your project will involve a study with the direct participation of human subjects (e.g., developers or students or other stakeholders participating in a lab experiment, observations, focus group, interviews, surveys), you will need to submit a brief application for ethics approval. We will guide you in this process (you cannot change your mind on this aspect after Nov 16th). Note you cannot use deception or study classmates as part of this study. Further details on how to submit an ethics application can be found [here](https://github.com/margaretstorey/EmseUvic2020/tree/master/activities/project-2-ethics).

## Relation to thesis work or other course work

Please note that this project should be independent from other course projects you have done previously or that you are currently doing, and it should also be independent from research work you have done or are doing for your graduate degree (the reason is that determining what is unique in terms of the contribution for this course becomes problematic). If you are unsure about this aspect, do talk to your instructor about this.  Some overlap in terms of topic or domain is fine, so do check!

## Submissions, due dates, milestones

All of the submissions should take place on Brightspace in the appropriate category. See Brightspace for deadlines. Do NOT wait to get started.

| Milestone | Value | 
|---|---|
| Project Proposal    |  10% of project | 
| Project interim report | 20% of project | 
| Project presentation | 10% of project | 
| Project final report | 60%  of project | 

## Project Advice

Each student/team member is required to do the following:

1. Follow any updates on this site and meet all of the established interim milestones.
2. Attend all the lectures during the semester, as these will prepare you to succeed in this project.
3. Together with your team mates (if any), choose a topic for your project (details to follow).
4. Contribute equitably throughout the term to the team project in terms of research, video and paper writing.
5. Grade will be determined on a combination of the following:
    - 20% of your grade for this project component will be given for presentation in class (prepared video or tiktok!)
    - 80% of your grade will be based on the final report and meeting milestones throughout the term
    - Your grade will also reflect how much you refer to and integrate course concepts throughout the term
    - Extra points may be given for: challenging projects, original ideas, collaboration with external organizations.

### Proposals
It is tempting to treat the proposal as a gimme and not put effort into it. And yet in MY view, it is the most critical part of the project. **Spend some serious time on it.** (like 5-10 hours I would say) 

Your proposal should answer the following questions:
1. What is the existing study or studies that you are replicating or building on? Even for a new study, you should have a clear sense of other approaches to this problem. Your life will be easier if you have a clear guide. Don't worry if it feels like "cheating" because the original paper was so clear and the data so accessible. We can easily add complexity; it is very hard to take it away. 
2. The dataset you are using, and the experiments you have done with it. Don't just trust that the paper URL is still there, or that the data is accessible or useful. Download it, load it into R/Jupyter, and do some simple experiments. 
3. Any other tools you will need, how well you know them, and what they cost. For example, you might require a .NET component that the original study used, but you do not have a Windows machine. Or you will use a DL approach that requires Google TPUs to train. 
4. The research questions you are trying to answer. What is the contribution your paper will make?  I suggest using the answers to #1 above, checking what those papers say was either hard, interesting new directions, or questions they didn't have time to answer. You might also find gaps in the original analysis.
5. Rough sense of methodology you will follow and *who* will be doing each task. At the very least there will be writing of the paper, creating the video, running the analysis, processing/preparing the data, writing analysis code, reading relevant background papers, ... start outlining that. 
6. Relative to the methodology, specify exactly what the workflow is: data sources, filtering criteria, data science algorithms to use, analysis validation etc. Don't underestimate how long it takes to acquire data and write analysis code. 

# Potential Data Sources

For some ideas of projects you can replicate that are based on data traces only, you may get some ideas from this book: http://www.knosof.co.uk/ESEUR/ (see also http://www.knosof.co.uk/ESEUR/ESEUR-draft.pdf and
https://github.com/Derek-Jones/ESEUR-code-data for the code and data).
Or you may wish to replicate a study from an existing paper that has replication materials available. GHTorrent is another possibility but pay attention to the Perils paper we read by Kalliamvakou et al.!
The MSR challenges may provide some ideas, e.g. see [2020 MSR challenge papers](https://2020.msrconf.org/track/msr-2020-mining-challenge?track=MSR%20Mining%20Challenge#Resources-for-Participants), see other MSR challenge years. This page also lists some datasets: https://github.com/woc-hack/msr-hackathon/blob/master/README.md

Also smaller workshops (e.g., CHASE) at ICSE may have studies that are of smaller scope that do not rely on data mining. You may take one of these designs, critique it, redesign and if possible run a pilot with a new design.

- [Software Heritage graph](https://docs.softwareheritage.org/devel/swh-dataset/graph/)
- GHTorrent
- TravisTorrent
- [GrimoireLab](https://chaoss.github.io/grimoirelab/)
* Various datasets from the MSR Data Challenges

# Past Projects
(nb: do not do these projects again without checking with me)

## Fall 2021
- replicating with a Bayesian analysis of the survival of Python OSS projects
- the use of Copilot to solve undergrad assignments
- security vulnerability types in Javascript vs Python
- knowledge types in API reference docs
- detecting programmer expertise by looking at commit logs
- evolution patterns of Python API frameworks
- Python coding style compliance on GitHub
- Do software evolution laws hold?
- Method chaining use in Java
- comparing clone detection techniques
- predicting OSS delivery capability
- Impact of StackOverflow code snippets on cohesion metrics
- deep learning based code completion
- applying newer statistical techniques to software cost modeling
- polyglot programming and evolution patterns
- characteristics of the Python package ecosystem
- 
