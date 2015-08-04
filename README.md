# more-markdown / mathjax-processor

A plugin for `more-markdown` that render LaTeX formulas using MathJax.

# Installation

You first need a [more-markdown](https://github.com/Welfenlab/more-markdown) setup. Then you can install it via:

```
npm install @more-markdown/mathjax-processor
```

# Usage

```
var moreMarkdown = require('more-markdown');
var mathjaxProcessor = require('@more-markdown/mathjax-processor');

// create a processor that writes the final html
// to the element with the id 'output'
var proc = moreMarkdown.create('output', processors: [mathjaxProcessor]);

proc.render("$$ a^2 = b^2 + c^2 $$");
```

