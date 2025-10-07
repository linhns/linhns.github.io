---
layout: post
title: A website refresh
date: 2025-10-07 21:00:22 +0700
tags: [jekyll, web]
mermaid: true
---

After 2 years laboring in the industry, I finally decided to give my website
a new look. I will try to blog more from now on, so the best thing to do is to
document this refresh, particularly what I learned during the process.

I started out with a 2-file setup, `index.html` and `style.css`. It was
understandable as I just learned about web and publishing on [GitHub
Pages][github-pages], so the simplest way was the right way.

As I got nearer to the end of my university time, I jumped on the Rust bandwagon
and the "build your own" trend, thus leading me to create my own templates to
use with [Zola][zola]. The result? I got the look I wanted that looked like
I put the default Ubuntu terminal on the internet, the sections and navigation
I imagined and my website built in less than a second.

Zola, in my opinion, is a good product with potential to be great. It allows
users full freedom in customizing templates, themes and provides decent
functionalities such as feeds and taxonomies. However, it lacks a good default
theme, and the biggest pain at the time I used it was SEO. This was expected to
be handled by theme creators, and that really hinders its adoption even today.

When choosing the tool for this remake, there were a few criteria that I sought
for:

* **Stability**: Dependability and future-proof tools triumph fancy but unstable
  ones. I don't want to suddenly see my site not building because of a SSG has
  a breaking change.
* **Simplicity**: There are just enough features that I need, with as few
  unnecessary decorations as possible.
* **Sane defaults**: There's no point reinventing the wheel unless you are
  hardcore, and that often do not go too well.

Using these criteria, **Jekyll** was my selection. Its default theme,
[minima][minima], comes with everything I need, and GitHub Pages does support
using a remote theme so I could use `v3` without any hassle. From there on,
I made some small tweaks to the templates, bolted on Mermaid, MathJax and
[giscus][giscus]. That's it.

[github-pages]: https://docs.github.com/en/pages
[zola]: https://www.getzola.org
[minima]: https://github.com/jekyll/minima
[giscus]: https://giscus.app
