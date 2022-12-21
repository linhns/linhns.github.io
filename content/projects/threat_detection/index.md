+++
title = "Threat Detection in Images"
description = "An application of machine learning to classify images into different threat levels."

# The date of the post.
# Two formats are allowed: YYYY-MM-DD (2012-10-02) and RFC3339 (2002-10-02T15:00:00Z).
# Do not wrap dates in quotes; the line below only indicates that there is no default date.
# If the section variable `sort_by` is set to `date`, then any page that lacks a `date`
# will not be rendered.
# Setting this overrides a date set in the filename.
# date =

# The last updated date of the post, if different from the date.
# Same format as `date`.
# updated =

# The weight as defined on the Section page of the documentation.
# If the section variable `sort_by` is set to `weight`, then any page that lacks a `weight`
# will not be rendered.
weight = 0

# A draft page is only loaded if the `--drafts` flag is passed to `zola build`, `zola serve` or `zola check`.
draft = false

# If set, this slug will be used instead of the filename to make the URL.
# The section path will still be used.
# slug = ""

# The path the content will appear at.
# If set, it cannot be an empty string and will override both `slug` and the filename.
# The sections' path won't be used.
# It should not start with a `/` and the slash will be removed if it does.
# path = ""

# Use aliases if you are moving content but want to redirect previous URLs to the
# current one. This takes an array of paths, not URLs.
aliases = []

# When set to "true", the page will be in the search index. This is only used if
# `build_search_index` is set to "true" in the Zola configuration and the parent section
# hasn't set `in_search_index` to "false" in its front matter.
in_search_index = true

# Template to use to render this page.
# template = "project.html"

# The taxonomies for this page. The keys need to be the same as the taxonomy
# names configured in `config.toml` and the values are an array of String objects. For example,
# tags = ["rust", "web"].
[taxonomies]

# Your own data.
[extra]
start_date = 2022-10-15
end_date = 2022-11-11
technologies = ["Python", "Tensorflow"]
links = [
    { url = "$PROJECT_PAGE_URL/poster.pdf", name = "Poster" },
    { url = "https://github.com/linhns/cs4243-project", name = "GitHub" },
]
short_description = ""
+++

### Task definition
Classify images into 3 different threat categories: normal(no threat), carrying(a weapon is being carried), threat(a threat can be detected)

### Implementation details
Based on the dataset given to our group, it was clear that transfer learning is the only method at our disposal as while models are often trained on 6000-4000000 images, the dataset contains roughly only 4000 images after we manually removed those that were wrongly labeled. 

We followed the ML Pipeline quite closely and constructed a pluggable and configurable pipeline, which can be adapted for different models and hence different projects. It allows control of shuffling, batching, and minor image manipulations supported by tensorflow. 

At the modelling stage, the choice was to stick with a popular, heavily-adopted approach by the deep learning community, and thus we chose a ResNet50V2 trained on ImageNet as our feature extractor, attached a minimal classification head, and performed transfer learning and fine-tuning with early stopping to avoid overfitting.

### Results
Despite our best efforts, we only achieved 78% accuracy, which is not deployable by any means. We suspected a deeper problem regarding data and problem concept, and ran the same process with InceptionV3 as a feature extractor. There were not much difference in terms of accuracy. Looking at the confusion matrices showed little, thereby confirming our intuition of data problems such as blurriness, misclassifications, and subtlety between *threat/carrying*. More details on our findings and future improvements are in the poster. 

### My contribution
I took sole responsibility to perform all programming-required parts, manually inspected the images and contributed to content selection for poster. During poster demo day, I conducted a presentation for 1 judge and assisted with Q&A when teammates presented.

_Note: This project was done for NUS module [CS4243 Computer Vision](https://nusmods.com/modules/CS4243/computer-vision-and-pattern-recognition)