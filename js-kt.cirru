
doctype

html
  head
    title "MobileRosetta : Javascript - Kotlin - Swift Langauge Comparison Reference"
    meta (:charset utf-8)
    link (:rel icon)
      :href http://logo.cirru.org/cirru-32x32.png
      :type image/png
    link (:rel stylesheet)
      :href https://cdnjs.cloudflare.com/ajax/libs/highlight.js/9.11.0/styles/github.min.css
    style (@insert css/style.css)
    script (:src https://cdnjs.cloudflare.com/ajax/libs/highlight.js/9.11.0/highlight.min.js)
    script (:src https://cdnjs.cloudflare.com/ajax/libs/highlight.js/9.11.0/languages/go.min.js)
    script (:src https://cdnjs.cloudflare.com/ajax/libs/highlight.js/9.11.0/languages/swift.min.js)
    script (:src https://cdnjs.cloudflare.com/ajax/libs/highlight.js/9.11.0/languages/kotlin.min.js)
    script (:src https://cdnjs.cloudflare.com/ajax/libs/highlight.js/9.11.0/languages/javascript.min.js)
    script (:defer true) "hljs.initHighlightingOnLoad();"
  body
    a (:target _blank)
      :href https://github.com/flyingobjex/swift-is-like-go
      img#fork-me (:src ./fork-me.png)
    #note
      = "Forked from the original:"
      a (:href https://github.com/jiyinyiyong/swift-is-like-go) (:target _blank)
        = "Swift is like GO"
      br
      = "Inspired by and a continuation of:"
      a (:href https://derek-watson.github.io/swift-kotlin-js/) (:target _blank)
        = "Swift is like Kotlin is like JS"


    .section
      .title "Rx Observer - Basic Subscribe & Update"
      .case (.name "Function") $ .pair
        .card (.lang Javascript) $ pre.code $ code.javascript (@insert code-bdd/RxObserverExample.js)
        .card (.lang Kotlin) $ pre.code $ code.swift (@insert code-bdd/RxObserverExample.kt)
      .case (.name "Model") $ .pair
        .card (.lang Javascript) $ pre.code $ code.javascript (@insert code-bdd/Model.js)
        .card (.lang Kotlin) $ pre.code $ code.swift (@insert code-bdd/Model.kt)
      .case (.name "Tests") $ .pair
        .card (.lang Javascript) $ pre.code $ code.javascript (@insert code-bdd/RxObserverExampleSpec.js)
        .card (.lang Kotlin) $ pre.code $ code.swift (@insert code-bdd/RxObserverExampleSpec.kt)

    .section
      .title "JSON Parsing"
      .case (.name "Function") $ .pair
        .card (.lang Javascript) $ pre.code $ code.swift (@insert code-bdd/JsonExample.js)
        .card (.lang Kotlin) $ pre.code $ code.swift (@insert code-bdd/JsonExample.kt)
      .case (.name "Model") $ .pair
        .card (.lang Javascript) $ pre.code $ code.swift (@insert code-bdd/Model.js)
        .card (.lang Kotlin) $ pre.code $ code.swift (@insert code-bdd/Model.kt)
      .case (.name "Tests") $ .pair
        .card (.lang Javascript) $ pre.code $ code.swift (@insert code-bdd/JsonExampleSpec.js)
        .card (.lang Kotlin) $ pre.code $ code.swift (@insert code-bdd/JsonExampleSpec.kt)

