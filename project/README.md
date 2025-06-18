# Project Outline

The goal of this project is to take a software analytics problem and provide a 10 page report summarizing the approach taken and conclusions drawn. Good examples are papers published at [MSR](https://2025.msrconf.org), [ICSE](https://conf.researchr.org/home/icse-2025), [SANER](https://conf.researchr.org/home/saner-2024) and similar venues.

For this project, you will need to 
1. Identify a SE problem or question. 
2. Find a suitable sample and data to solve/answer that problem/question.
3. Analyze the data using the techniques covered in class (or others).
4. Write up a report summarizing the problem and solution in academic style, as a Quarto notebook.
5. Present the results as a 5 min slideshow to your colleagues.

## Teams 

The project should ideally be completed in teams of 3-4 students, but students can complete it alone or in pairs if they wish.  The main contribution from this project is about the insights you gained concerning the empirical aspects rather than new knowledge gained through the study. You **MAY NOT** mix graduate students and undergraduate students in your teams.

## Research Ethics

The 2025 offering will be too short to allow us to get proper ethics approval for human subject studies, unfortunately. 
<!--
If your project will involve a study with the direct participation of human subjects (e.g., developers or students or other stakeholders participating in a lab experiment, observations, focus group, interviews, surveys), you will need to submit a brief application for ethics approval. We will guide you in this process (you cannot change your mind on this aspect after Nov 16th). Note you cannot use deception or study classmates as part of this study. Further details on how to submit an ethics application can be found [here](https://github.com/margaretstorey/EmseUvic2020/tree/master/activities/project-2-ethics). -->

## Use of AI and LLM tools
You may use AI in this project. Uncritical and unthinking application of AI to the project is a) a bad idea generally and b) not helpful for the learning experience you paid for.

All use of AI has to be noted. In addition, in the project you must commit your prompts and details of the use of AI, in line with the [guidelines posted here](https://llm-guidelines.org). I drew on [this Cloudflare approach](https://www.maxemitchell.com/writings/i-read-all-of-cloudflares-claude-generated-commits/) for inspiration; if it works for them, I reason it should for us too. 

All development should take place on GitHub. You should not be making notes in (e.g.) Google Docs or Office 365, and should not be using Google Colab unless you check first.

The rationale is that the teaching team needs to see the work that is happening incrementally. Committing large chunks of code or text, especially not by yourself, will lead to loss of marks.

> For example, you were tasked with writing the report. You do this in Google Docs so you can leverage their AI tools. Your teammates send you their sections. The day before the final report is due, you copy and paste all the text into Github. I see one commit of 3000 lines by @student1. I have no idea where that text came from, nor how you worked as a team.

## Project Structure
Your repository should be structured as:

* /src - code, internal libraries, and notebooks (such as .ipynb). You must use `renv` to allow us to reproduce your R environment. 
* /data - either the CSV files etc. you are using, or, in case the data file is enormous, some README describing where it can be accessed (e.g., via S3 buckets).
* /test - you are testing, aren't you? 
* /doc - prompts, other docs. Prompts should go in the prompts.md file, sorted temporally (by date). If the tool you use (Claude, Copilot etc) has a mechanism for storing prompts/sessions, you can link to that. For example, Cloudflare [stores their sessions on a website](https://github.com/cloudflare/workers-oauth-provider/commit/6e9808b45735680169c3b94ff9830ba0f5a99350).
* /paper - the project writeups. Please write these in [Quarto](https://quarto-tdg.org/overview). Quarto supports references. You may embed visualizations in your Quarto document directly. You should end up with at least one doc per milestone (e.g., )
* README.md - project team (and Github IDs), topic and related work.
* CHANGELOG.md - your team meetings must be documented in this, capturing what progress transpired each week. Use GitHub commit references to link to the relevant commit/issue/PR. 

## Relation to thesis work or other course work

Please note that this project should be independent from other course projects you have done previously or that you are currently doing, and it should also be independent from research work you have done or are doing for your graduate degree (the reason is that determining what is unique in terms of the contribution for this course becomes problematic). If you are unsure about this aspect, do talk to your instructor about this.  Some overlap in terms of topic or domain is fine, so do check!

## Submissions, due dates, milestones

All of the submissions should take place on Brightspace in the appropriate category. See Brightspace for deadlines and formal descriptions and rubrics. Do NOT wait to get started.

| Milestone              | Aim                                    | Value           |
| ---------------------- | -------------------------------------- | --------------- |
| Project Proposal       | Explain idea and get approval          | 10% of project  |
| Project interim report | Discuss progress to date and timelines | 20% of project  |
| Project presentation   | Show results to colleagues             | 10% of project  |
| Project final report   | Write up results and process           | 60%  of project |

## Project Advice

Each student/team member is required to do the following:

1. Follow any updates on this site, Teams, Brightspace, and meet all of the established interim milestones.
2. Attend all the lectures during the semester, as these will prepare you to succeed in this project.
3. Together with your team mates (if any), choose a topic for your project.
4. Contribute equitably throughout the term to the team project in terms of research, presentation, and paper writing.
5. Grade will be determined on a combination of the following:
    - the final report and meeting milestones throughout the term
    - Your grade will also reflect how much you refer to and integrate course concepts throughout the term.
    - Team peer reviews of effort, via Teammates.
    - Extra points may be given for: challenging projects, original ideas, collaboration with external organizations.

### Ways to get bad marks
1. Superficial or lazy replication of existing work. Starting from an existing problem is fine, as are replications, but just re-running analysis someone else did is not enough to pass the project.
2. Letting LLMs do all the analysis work. You can expect me to ask pointed questions about your assumptions, so your team needs to understand what you are doing.
3. Forgetting that this is a short course and explaining you no longer have time to finish the project as originally conceived. 
4. Writing the report at the end, instead of as you go.

# Past Projects
In lieu of a lengthy list, I will reserve the right to change your project topic if it veers too close to past semester projects. 

