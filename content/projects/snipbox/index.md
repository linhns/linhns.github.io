+++
title = "Snipbox"
description = "A pastebin clone built in Go"

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
weight = 1

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
start_date = 2023-03-01
end_date = 2023-04-03
technologies = ["Go", "PostgreSQL"]
links = [
    { url = "https://snipbox.up.railway.app/", name = "Demo" },
]
short_description = ""
+++

### What I did?
Everything

### Implementation details
Backend was handled using go packages such as `httprouter`, `alice`, 
and user interface was adopted from Alex Edwards's _Let's Go_ book.

PostgreSQL was used since I'm more familiar with it, compared to MySQL. For the
database driver, I chose `libpq` as it was easiest to integrate.

I chose to host this on Railway as they have an interface quite similar to
Heroku, which I used in the past and the experience has been smooth so far.

_Note_: As this project is hosted for free on Railway, there will be some
downtime per months as their free plan only allows maximum of 500 execution
hours or $5 in credits. When either of these runs out, snipbox cannot be
accessed.

