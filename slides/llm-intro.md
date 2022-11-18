---
author: Neil Ernst
date: Nov 2022
marp: true 
title:  Introduction to large language models in Software Engineering
--- 

# Intro

Codex demo. Copilot demo.

What is the underlying SE for ML work that is needed for Codex? For Copilot? 

Requirements Classification example - https://github.com/tobhey/NoRBERT and https://colab.research.google.com/drive/1B_5ow3rvS0Qz1y-KyJtlMNnmgmx9w3kJ#scrollTo=cyoj29J24hPX

# What are we training on? 

Large amounts of textual data (usually English or English-based source code). Natural language processing (NLP) is a branch of AI concerned with representing, reasoning, manipulating natural language and text documents (as opposed to images, videos, moving robots around, etc). 

Another task is to create language models, which are often input to the higher-order tasks above. A *language model* captures the relationships between words in a language so that it can predict which tokens go where. As we will see one way to think about a language model is that it can solve a task like [^bench]

- **Prediction/Masking**: what replaces 🔡 in "Jim drove a 🔡 to the Drive-Thru line" (masking). Commonly used for self-supervision in training.
- **Analogy**: "Red is to rose as 🔡 is to iris"
- **Question Answering**: "who was president of the USA in 2002?"
- [Winograd Schema](https://en.wikipedia.org/wiki/Winograd_schema_challenge)s: The city councilmen refused the demonstrators a permit because they [feared/advocated] violence.
- **Translation**: "j'aime beaucoup la cuisine japonais" in English is ...
- **Summarization**: what does `System.out.println("neil is an awesome instructor")` do?
- 

**Source code is a language!!** More importantly, it is a [very regular, natural language](https://dl.acm.org/doi/10.5555/2337223.2337322) - we can say with a much higher degree of certainty what the next token will be. If I tell you `System.out.println(` ... you can guess the next token is something convertible to `String` followed by a closing paren. If I tell you `the big red dog ran` ... you have a wide range of possible tokens (adverb, )

# Useful terms 

1. **N-gram** - N words in a group. Bigram: "hot lunch, big fish" Tri-gram "Manchester United won"
2. **Token** - an atomic "chunk" in the corpus. Could be a word; could be a source code token (`{`). 
3. **Stop words** - words we don't think will be important. Typically, "the, an, and, or" (but which ones?)
4. **Stemming**/**lemmatization** - shorten words to their essence. "Skillfully" -> skillful- / skill-
5. **AST** - [Abstract Syntax Tree](https://arxiv.org/abs/2112.01184). A way of [representing](https://www.geeksforgeeks.org/abstract-syntax-tree-ast-in-java/) (encoding) programs using symbols and relationships. 
6. **Distance**: historically ML has had a hard time understanding concepts separated in text. But this happens a lot in source code (`var theVar; ... ; theVar = 5;`). Need something to represent this span of relationship.
7. **OOV**: out of vocabulary, a word that is not in the vocabulary (dictionary) learned in the model's training. E.g., a word that does not appear in Wikipedia, for the GloVe embedding. Such a word will have no representation (think about a self-driving car seeing a totally novel situation like a helicopter landing on the freeway).

# Encoding

After preprocessing, we need to encode the text - a word like "function" - into a numeric representation. 

* Count embedding: each word is represented by its frequency
* TF-IDF - represent using inverse document frequency
* [Word embedding](https://towardsdatascience.com/creating-word-embeddings-coding-the-word2vec-algorithm-in-python-using-deep-learning-b337d0ba17a8): Each word is encoded into a vector (rank 1 tensor) of real numbers representing different dimensions (often 100, 200). E.g., `function` = `[0.322, 0.113, 0.567,..]`. Importantly, words that "mean" similar things (for our domain of interest) should be closer together on some distance metric. 
* Most of the time [we can re-use embeddings](https://nlp.stanford.edu/projects/glove/) but should be careful the source data is close to our data (e.g., the train control system might not be represented by Wikipedia).

![](https://nlp.stanford.edu/projects/glove/images/man_woman.jpg)

This works OK ... but language is pretty complicated. The word embedding model is restricted to looking a few tokens ahead or behind (the window/context). That means learning more complex relationships (e.g., this phrase modifies a previous noun) are hard to do.

# Attention and Transformers

Another approach is to 

[^bench]: See this page for more benchmarks and metrics: https://slds-lmu.github.io/seminar_nlp_ss20/resources-and-benchmarks-for-nlp.html

https://peterbloem.nl/blog/transformers

https://colab.research.google.com/drive/1B_5ow3rvS0Qz1y-KyJtlMNnmgmx9w3kJ#scrollTo=1QOuke5yS3mc

https://jalammar.github.io/a-visual-guide-to-using-bert-for-the-first-time/

https://jalammar.github.io/illustrated-word2vec/

https://towardsdatascience.com/attention-is-all-you-need-discovering-the-transformer-paper-73e5ff5e0634