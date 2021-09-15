---
Title: Early Approaches to Data Science in SE
Author: Neil Ernst
Date: September 2021
---

# Early Days

"Computers" → women doing slide rule calculations as shown in Hidden Figures. 

Proprietary data from big projects: the A7 software project, IBM's OS/360 project. An era of positivism and Taylorism: if only we can measure what people are doing, we can manage it like we would building pyramids.

This was ultimately shown to be false in two seminal analyses: Brooks's mythical man-month project and Peopleware. It paralleled similar revolutions in sociology, epistemology, critical theory that pointed out the many flaws in a strictly empirical approach to culture, science, literature, the "counter culture" if you will. But people like Brooks are hardly hippies; what he saw was - I think - deeply distressing for him, someone raised on math and engineering. The reality was that scientific management - the current trend, the idea that humans are these cogs that can be precisely measured and moved into the correct place to maximize efficiency - failed utterly in the software process (it failed everywhere else too, but that's another story[^AMZ]). 

Data has therefore been part of software development and software management since the beginning, as part of this cultural legacy of measure what you manage: how long does it take to compile, how many lines of code are people writing, etc. The 10X study is a good example. 

# The Open Source Era

<img src="/Users/nernst/Documents/teaching/DataScience4SE/slides/linux.png" style="zoom:33%;" />



While plenty of data was available for studies like the 10x study, the challenge for researchers was (and is) getting access to data that is cheap to acquire (i.e. licensing) and still representative of the problems in practice. The rise of open source software like Linux was therefore very important in developing data science approaches, and more broadly, the field of empirical software engineering. 

The paper by Tu and Godfrey (readings) represents one of these early approaches. They look at how Linux has changed over time, using a specific theory (Lehman's laws) as guide. They then also report on what parts of Linux change most (the drivers). 

Now this seems a bit trivial, but at the time it was pretty novel to be able to even download source code to your machine with ease. 

This triggered the move to a focus on Empirical SE, like Kitchenham outlines. Now there was enough data to be able to systematize what we were studying and how we were studying it. 



# Bringing Insights into Practice: The Sapienz Example

From the [SCAM Facebook paper](https://ieeexplore.ieee.org/stamp/stamp.jsp?tp=&arnumber=883030) by O'Hearn and Harman:

1. **Irrelevant**: ‘Academics need to make their research more industrially-relevant’, 
2. **Unconvincing**: ‘Scientific work should be evaluated on large-scale real-world problems’, 
3. **Misdirected**: ‘Researchers need to spend more time understanding the problems faced by the industry’, 
4. **Unsupportive**: ‘Industry needs to provide more funding for research’, 
5. **Closed** **System**: ‘Industrialists need to make engineering production code and software engineering artifacts available for academic study’, and 
6. **Closed** **Mind**: ‘Industrialists are unwilling to adopt promising research’.

## Insights into the human aspect

> Developers are, in practice, not short of lists of fault and failure reports from which they might choose to act

Thus the tool - the data science output---must ensure it produces work that has:

* **Relevance**: the developer to whom the bug report is sent is one of the set of suitable people to fix the bug; 
* **Context**: the bug can be understood efficiently; 
* **Timeliness**: the information arrives in time to allow an effective bug fix. 
* **Debug payload**: the information provided by the tool makes the fix process efficient;



[^AMZ]: Of course nowadays companies are arguably reinventing Taylorism 2.0, with extremely precise monitoring of workers, how long they spend in the bathroom, how often they are on the phone, forcing people to download company spy software onto personal phones, etc. 