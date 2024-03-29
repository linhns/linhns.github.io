+++
title = "NextWordPredictor"
description = "NWP is a input suggestor. It simply takes what user types and generates suggestions for the next word."

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
weight = 2

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
start_date = 2020-05-20
end_date = 2020-08-01
technologies = ["R", "Markdown", "Shiny"]
links = [
    { url = "https://linhns.shinyapps.io/datasciencecapstone/", name = "Demo" },
]
short_description = "A word suggestor"
+++

![NextWordPredictor UI](nwp.png)

### Tech stack

Frontend: _RMarkdown_

Backend: _R, Shiny_

### Features

-   Simple UI
-   Sensible prediction

### What I did

Everything

### Implementation

Suggestions are based from a corpus of tweets, news and blogs, which are then filtered to remove profanities, punctuations and converted to lowercase.
Further analysis shows that when users type a word, it is more likely that they are using a collocation of two words, therefore suggestions mainly focus on bigrams,
with trigrams less considered. For example typing `go` will give 3 suggestions of `to`, `on`, and `home`, all of which form phrases that are ubiquitous in daily life.
