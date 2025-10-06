---
layout: post
title: Welcome to Jekyll!
date: 2025-10-05 00:38:22 +0700
categories: jekyll update
mermaid: true
---

You’ll find this post in your `_posts` directory. Go ahead and edit it and re-build the site to see your changes. You can rebuild the site in many different ways, but the most common way is to run `jekyll serve`, which launches a web server and auto-regenerates your site when a file is updated.

Jekyll requires blog post files to be named according to the following format:

`YEAR-MONTH-DAY-title.MARKUP`

Where `YEAR` is a four-digit number, `MONTH` and `DAY` are both two-digit numbers, and `MARKUP` is the file extension representing the format used in the file. After that, include the necessary front matter. Take a look at the source for this post to get an idea about how it works.

Jekyll also offers powerful support for code snippets:

{% highlight ruby %}
def print_hi(name)
puts "Hi, #{name}"
end
print_hi('Tom')
#=> prints 'Hi, Tom' to STDOUT.
{% endhighlight %}

Check out the [Jekyll docs][jekyll-docs] for more info on how to get the most out of Jekyll. File all bugs/feature requests at [Jekyll’s GitHub repo][jekyll-gh]. If you have questions, you can ask them on [Jekyll Talk][jekyll-talk].

$$
\\begin{aligned}
& \\phi(x,y) = \\phi \\left(\\sum\_{i=1}^n x_ie_i, \\sum\_{j=1}^n y_je_j \\right)
= \\sum\_{i=1}^n \\sum\_{j=1}^n x_i y_j \\phi(e_i, e_j) = \\
& (x_1, \\ldots, x_n) \\left( \\begin{array}{ccc}
\\phi(e_1, e_1) & \\cdots & \\phi(e_1, e_n) \\
\\vdots & \\ddots & \\vdots \\
\\phi(e_n, e_1) & \\cdots & \\phi(e_n, e_n)
\\end{array} \\right)
\\left( \\begin{array}{c}
y_1 \\
\\vdots \\
y_n
\\end{array} \\right)
\\end{aligned}
$$

```mermaid
graph TD;
A-->B;
A-->C;
B-->D;
C-->D;
```

[jekyll-docs]: https://jekyllrb.com/docs/home
[jekyll-gh]: https://github.com/jekyll/jekyll
[jekyll-talk]: https://talk.jekyllrb.com/
