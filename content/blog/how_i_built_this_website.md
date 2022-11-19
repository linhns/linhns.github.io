+++
title = "How I built this website"
description = ""

# The date of the post.
# Two formats are allowed: YYYY-MM-DD (2012-10-02) and RFC3339 (2002-10-02T15:00:00Z).
# Do not wrap dates in quotes; the line below only indicates that there is no default date.
# If the section variable `sort_by` is set to `date`, then any page that lacks a `date`
# will not be rendered.
# Setting this overrides a date set in the filename.
date = "2022-11-19"

# The last updated date of the post, if different from the date.
# Same format as `date`.
updated = "2022-11-19"

# The weight as defined on the Section page of the documentation.
# If the section variable `sort_by` is set to `weight`, then any page that lacks a `weight`
# will not be rendered.
weight = 0

# A draft page is only loaded if the `--drafts` flag is passed to `zola build`, `zola serve` or `zola check`.
draft = true

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
template = "blog-page.html"

# The taxonomies for this page. The keys need to be the same as the taxonomy
# names configured in `config.toml` and the values are an array of String objects
[taxonomies]
tags = ["web", "zola", "sass"]
# Your own data.
[extra]
+++

# Motivation

After a few years of leaving my website consisting of just 2 files `index.html` and `style.css`, together with some miscellanous git files,
I made a decision to upgrade it to include different sections and especially, a blog that I can write whenever I like.
Obviously, using plain html files for this purpose is an arduous, painstaking task. Therefore I decided to go with an SSG.

# Execution

## Why I chose Zola

Static site generators have been around for a long time, and there are hundreds of them to choose from.
[Jamstack](https://jamstack.org/generators/) has a summary of all available SSGs with details of backend language and templating language.

While I could go with more popular options on the list such as Jekyll or Hugo,
I found out Zola is built on Rust, and I can't stress how much I love it. That said, Zola is not without its downsides, particularly
regarding its template language Tera, which does not have editor support as much as other templating languages.
However, Zola struck me in terms of simplicity, and its clear [documentation](https://www.getzola.org/documentation/)
shows exactly what needs to be done without all the fuss.
That fuss is exactly why, up to now, I still cannot understand Hugo and believe it's a mess.
One more thing, Zola is fast, extremely fast to build. I timed one of the production builds
and it took approximately 1 minute for my content to show up.

## How I decided the structure of this website

After choosing Zola as the SSG, I need to structure my website around how Zola works. Luckily, this is quite simple,
and Zola allows users to freely construct their website, as long as content are stored in the `content` directory
and there is a template to render it in `templates` directory. Since I want each section and its pages to have their own look,
with some shared features. This is easy to do by creating `section.html` and extends it for a particular section, for example
`blog.html` for _blog_.

Currently, this website has 3 sections: `experience`, `projects`, `blog`. This is a good split for the content that I currently have,
but may change if I need more in the future. I also added `tags` as a way for readers to filter my blog posts according to tags.

## How I settle on the style

The previous version of this website did not look that bad, however I felt it was just a demonstration of Bootstrap.
That's why I wanted to create another look for it and in search of something new,
I stumbled on [Eliza Weisman's website](http://elizas.website) and I found her terminal-esque theme pretty exciting,
thus I should attempt to make something similar to brush up my frontend skills, which I have barely used for a while.

Since Zola suggests the use of Sass, I had to learn on the go, and currently, lots of my styling perhaps can be done
in a simpler, more condensed manner. Right now, I would say that I'm pretty satisfied with the current look.

# Conclusion

## Reflection

Building my website has been a great joy so far. It's time-consuming of course,
especially creating the dashed `<hr>`, which was harder than I thought.
But I believe that you learn more from the tough moments of life than the easy ones, and I'm certain
that I'm gonna go through many ordeals tougher than this in my life.

## Future

There are features of Zola that I have not explored such as search and feeds,
which I plan to add to this website as soon as I can.
In the longer term, I may add some interactions to this website such as
typing `cd ~/projects` will actually take readers to the `projects` section.

---

I want to thanks [Eliza Weisman](https://github.com/hawkw) for her great website that inspired my design and
[Christine Dodrill](https://github.com/Xe)(Xe Iaso) for another wonderful personal website, which influenced some of the customizations.
Especially, the use of border as underline is extremely smart. I may also add some AI-generated images to my website soon :).

---
