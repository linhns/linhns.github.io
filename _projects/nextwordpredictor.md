---
title: NextWordPredictor
description: A statistics-based word suggestor
date: 2025-01-10
tech: [R, Markdown, Shiny]
links:
  - name: Demo
    url: https://linhns.shinyapps.io/datasciencecapstone/
  - name: GitHub
    url: https://github.com/linhns/datasciencecapstone
---

NextWordPredictor suggest the next input based on the previous ones, similar to
that on smartphone keyboards.

### Implementation

Suggestions are based from a corpus of tweets, news and blogs,
which are then filtered to remove profanities, punctuations and
converted to lowercase.
Further analysis shows that when users ype a word,
it is more likely that they are using a collocation of two words,
therefore suggestions mainly focus on bigrams, with trigrams less considered.
For example typing `go` will give 3 suggestions of `to`, `on`, and `home`,
all of which form phrases that are ubiquitous in daily life.
