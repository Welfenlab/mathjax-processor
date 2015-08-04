# add a different handler for nodejs use. e.g. conversion to PNG?
if !MathJax?
  console.error("make sure to load MathJax before the advanced markdown MathJax Processor")

markdownitMath = require 'markdown-it-math'

mathjaxProcessor =
  register: (mdInstance, postProcessors) ->
    mdInstance.use markdownitMath,
      # only protect the math parts dont change them! (e.g. escape it like markdown)
      inlineRenderer: (str) -> "$$#{str}$$"
      blockRenderer: (str) -> "$$#{str}$$"

    mdInstance.domReady.registerCallback () ->
      postProcessors.register (dom, done) ->
        MathJax.Hub.Queue ["Typeset", MathJax.Hub, dom], () ->
          done()

    return null

module.exports = mathjaxProcessor
