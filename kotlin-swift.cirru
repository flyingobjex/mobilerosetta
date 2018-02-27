
doctype

html
  head
    title "MobileRosetta : Javascript - Kotlin - Swift Langauge Comparison Reference"
    meta (:charset utf-8)
    link (:rel icon)
      :href ./icon.png
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
      = "Forked from the original: "
      a (:href https://github.com/jiyinyiyong/swift-is-like-go) (:target _blank)
        = " Swift is like GO"
      br
      = "Inspired by and a continuation of: "
      a (:href https://derek-watson.github.io/swift-kotlin-js/) (:target _blank)
        = " Swift is like Kotlin is like JS"
      br
      h3
        = "A collection of common tasks and their equivalent solutions presented side-by-side in Kotlin, Javascript and Swift."
      = "Central Resource: "
      a (:href http://www.mobilerosetta.org) (:target _blank)
        = " www.mobilerosetta.org"
      br
      br
      = "JS <-> Swift:"
        a (:href ./js-swift.html) (:target _self)
          = "JS <-> Swift"
      br
      = "JS <-> Kotlin:"
        a (:href ./js-kotlin.html) (:target _self)
          = "JS <-> Kotlin"
      br
      = "Kotlin <-> Swift:"
        a (:href ./kotlin-swift.html) (:target _self)
          = "Kotlin <-> Swift"
      br
      br
      = "Kotlin <-> JS <-> Swift:"
        a (:href ./index.html) (:target _self)
          = "Kotlin <-> JS <-> Swift"



    .section
      .title "Rx Observer - Basic Subscribe & Update"
      .case (.name "Function") $ .pair
        .card (.lang Kotlin) $ pre.code $ code.swift (@insert code-bdd/RxObserverExample.kt)
        .card (.lang Swift) $ pre.code $ code.swift (@insert code-bdd/RxObserverExample.swift)
      .case (.name "Model") $ .pair
        .card (.lang Kotlin) $ pre.code $ code.swift (@insert code-bdd/Model.kt)
        .card (.lang Swift) $ pre.code $ code.swift (@insert code-bdd/Model.swift)
      .case (.name "Tests") $ .pair
        .card (.lang Kotlin) $ pre.code $ code.swift (@insert code-bdd/RxObserverExampleSpec.kt)
        .card (.lang Swift) $ pre.code $ code.swift (@insert code-bdd/RxObserverExampleSpec.swift)

    a (:name "json1")(:target: _self)
    br
    .section
      .title "JSON Parsing"
      .case (.name "Function") $ .pair
        .card (.lang Kotlin) $ pre.code $ code.swift (@insert code-bdd/JsonExample.kt)
        .card (.lang Swift) $ pre.code $ code.swift (@insert code-bdd/JsonExample.swift)
      .case (.name "Model") $ .pair
        .card (.lang Kotlin) $ pre.code $ code.swift (@insert code-bdd/Model.kt)
        .card (.lang Swift) $ pre.code $ code.swift (@insert code-bdd/Model.swift)
      .case (.name "Tests") $ .pair
        .card (.lang Kotlin) $ pre.code $ code.swift (@insert code-bdd/JsonExampleSpec.kt)
        .card (.lang Swift) $ pre.code $ code.swift (@insert code-bdd/JsonExampleSpec.swift)

