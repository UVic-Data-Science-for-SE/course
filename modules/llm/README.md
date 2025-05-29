---
author: Neil Ernst
title: Large Language Models in SE
---

AI-supported development tools, like Codex, Copilot, ChatGPT, etc., have taken a big role in SE recently. What underpins these tools, how do they work so well, what ethical concerns do they raise, and what can we expect for SE in the AI future?

# Learning Outcomes

- a more than passing awareness of how large language models "work" on code
- ability to discuss the (current) tradeoffs of these tools
- analyze the way such tools are evaluated and discern hype from reality
- how to apply these tools for SE problems like refactoring or code comprehension

# Topics and slides
These are the submodules I covered in class. 

*  [LLM overview](slides/llm-intro_pub.qmd) 
*  [Research Opportunities](slides/Grad-Opportunities.md)  
*  Theory
*  Training/Bench	
*  HCI 	
*  Next steps
  
## Readings
1.  Hindle et al., [On the Naturalness of Software](https://dl.acm.org/doi/10.5555/2337223.2337322)
2.  [Codex](https://arxiv.org/pdf/2107.03374.pdf)
3.  SWE Bench
  
## Exercises

These are done in class. The source code below is a combo of what I typed and what I prepped before hand. 

1.  Implement Command in code: [Command Pattern](https://github.com/UVic-Data-Science-for-SE/command_exercise/blob/main/README.md)  

## Optional Readings and Activities

These readings enrich the material but are not strictly necessary to read. 

* Karampatsis, [Big Code != Big Vocabulary](https://ieeexplore.ieee.org/abstract/document/9284032) 
  Autocomplete.
* Xu, Vasilescu, Neubig, ["In IDE Code Generation from Natural Language"](https://arxiv.org/abs/2101.11149) [sections 1-4, 8,9]
* [LeGoues podcast audio](https://www.youtube.com/watch?v=YPfyRT80VJI)
* LeGoues, [Survey of APR](http://www.cs.cmu.edu/~clegoues/docs/legoues-cacm2019.pdf) 
* * [StarCoder](https://arxiv.org/abs/2305.06161)
* [Patch Generation With Language Models: Feasibility and Scaling Behavior](https://openreview.net/pdf?id=rHlzJh_b1-5)

## Helpful tutorials and summaries
* Alammar, [The Illustrated Transformer](http://jalammar.github.io/illustrated-transformer/)
* Vaswani et al. [Attention is all you need](https://arxiv.org/abs/1706.03762)
* https://www.theverge.com/features/23764584/ai-artificial-intelligence-data-notation-labor-scale-surge-remotasks-openai-chatbots - how these tools are really improved
* Willison, ["understanding GPT tokenizers"](https://simonwillison.net/2023/Jun/8/gpt-tokenizers/)
* [Self-Attention from Scratch](https://sebastianraschka.com/blog/2023/self-attention-from-scratch.html) 