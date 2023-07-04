---
title: Grad Assignment - Replication
author: Neil Ernst
date: May 2023
---

NB: **To view the Brightspace assignment you must enroll in a Group ('GradAssn') first. It will not appear until you are in a group, even a group of 1.**

You will be replicating a research paper from an existing SE paper in MSR 2021 or 2022. Open science principles mean any paper should be replicable with minimal effort (see https://2023.esec-fse.org/track/fse-2023-artifacts#badges-for-replicated-or-reproduced-papers). However, this is often not the case! 

Note: you may work on this in teams of (at most) 2. In that case, submit the identical file for both individuals but LET ME KNOW you are working with someone else in the document preamble.

If you need help with the assignment then please talk to Neil.

# Finding a paper
You should look for a full research paper from the Mining Software Repositories conference. You can find the list [for 2022 here](https://dblp.org/db/conf/msr/msr2022.html) and [2021 here](https://dblp.org/db/conf/msr/msr2021.html). 

Full research papers are 10 pages in length. 

Tip: find a paper with a dataset and replication package! You can usually find the replication package linked in the paper, e.g. by grepping for "replication" or "zenodo" or URLs. 

Tip: avoid papers with big datasets! 

For example, the paper [Identifying Versions of Libraries used in Stack Overflow Code Snippets](http://soft.vub.ac.be/Publications/2021/vub-tr-soft-21-02.pdf) has the following replication package: https://zenodo.org/record/4568744 

Read the paper carefully. Be sure you understand the research problem the authors are addressing.

# Replication
You will need to retrieve the dataset and scripts from that paper. Then, run the scripts on your machine(s) or cloud instances, carefully documenting any problems you have (such as missing libraries, undocumented assumptions). Compare the results you obtain with the results from the original paper. Can you come to the same conclusions? 

# Report
Your assignment submission should consist of:
1. A link to a repo where you wrote the code / replicated the project. I would expect this to consist of Python source, Jupyter notebooks, etc.
2. A [*visual abstract* of the paper](https://www.margaretstorey.com/blog/2017/11/09/visual-abstracts/), explaining the key findings and technological rule. The template [can be found here](https://github.com/margaretstorey/VASE).
3. A report of 5 pages (max 2000 words, min 1000 words), properly formatted in IEEE format, that explains your experiences:
   1. A 250 word abstract/summary of the paper, including the key research questions, methodology, and findings.
   2. How you picked the paper.
   3. The quality of the replication package, according to these criteria.
   4. The replication process, including any problems you had (e.g., in recovering data).
   5. With respect to the paper itself, your *personal* interpretation of the paper's research question, method, and findings. You should produce at least 2 critiques of the paper's approach and your suggested improvements.

## Report Format 
* TITLE: A (Partial)? (Replication|Reproduction) of XYZ. Please add the term partial to your title if only some of the original work could be replicated/reproduced.
* WHO: name the original authors (and paper) and the authors that performed the replication/reproduction. Include contact information and mark one author as the corresponding author. IMPORTANT: include also a web link to a publically available URL directory containing (a) the original paper (that is being reproduced) and (b) any subsequent paper(s)/documents/reports that do the reproduction.
* WHAT: describe the “thing” being replicated/reproduced;
* WHY: clearly state why that “thing” is interesting/important;
* HOW: say how it was done first;
* WHERE: describe the replication/reproduction. If the replication/reproduction was only partial, then explain what parts could be achieved or had to be missed.
* DISCUSSION: What aspects of this “thing” made it easier/harder to replicate/reproduce. What are the lessons learned from this work that would enable more replication/reproduction in the future for other kinds of tasks or other kinds of research. 
