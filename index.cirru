
doctype

html
  head
    title "Swift is like Go"
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
      img#fork-me (:src http://jiyinyiyong.u.qiniudn.com/fork-me.png)
    #note
      = "Fork the repo if you want to help improve it. :)"
      br
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
        .card (.lang Swift) $ pre.code $ code.swift (@insert code-bdd/RxObserverExample.swift)
      .case (.name "Model") $ .pair
        .card (.lang Javascript) $ pre.code $ code.javascript (@insert code-bdd/Model.js)
        .card (.lang Kotlin) $ pre.code $ code.swift (@insert code-bdd/Model.kt)
        .card (.lang Swift) $ pre.code $ code.swift (@insert code-bdd/Model.swift)
      .case (.name "Tests") $ .pair
        .card (.lang Javascript) $ pre.code $ code.javascript (@insert code-bdd/RxObserverExampleSpec.js)
        .card (.lang Kotlin) $ pre.code $ code.swift (@insert code-bdd/RxObserverExampleSpec.kt)
        .card (.lang Swift) $ pre.code $ code.swift (@insert code-bdd/RxObserverExampleSpec.swift)

    .section
      .title "JSON Parsing"
      .case (.name "Function") $ .pair
        .card (.lang Javascript) $ pre.code $ code.swift (@insert code-bdd/JsonExample.js)
        .card (.lang Kotlin) $ pre.code $ code.swift (@insert code-bdd/JsonExample.kt)
        .card (.lang Swift) $ pre.code $ code.swift (@insert code-bdd/JsonExample.swift)
      .case (.name "Model") $ .pair
        .card (.lang Javascript) $ pre.code $ code.swift (@insert code-bdd/Model.js)
        .card (.lang Kotlin) $ pre.code $ code.swift (@insert code-bdd/Model.kt)
        .card (.lang Swift) $ pre.code $ code.swift (@insert code-bdd/Model.swift)
      .case (.name "Tests") $ .pair
        .card (.lang Javascript) $ pre.code $ code.swift (@insert code-bdd/JsonExampleSpec.js)
        .card (.lang Kotlin) $ pre.code $ code.swift (@insert code-bdd/JsonExampleSpec.kt)
        .card (.lang Swift) $ pre.code $ code.swift (@insert code-bdd/JsonExampleSpec.swift)

    .section
      .title BASICS
      .case (.name "Hello World") $ .pair
        .card (.lang Swift) $ pre.code $ code (@insert code/hello-world.swift)
        .card (.lang Kotlin) $ pre.code $ code (@insert code/hello-world.kt)
        .card (.lang JavaScript) $ pre.code $ code (@insert code/hello-world.js)
      .case (.name "Variables And Constants") $ .pair
        .card (.lang Swift) $ pre.code $ code (@insert code/variables-and-constants.swift)
        .card (.lang Kotlin) $ pre.code $ code (@insert code/variables-and-constants.kt)
        .card (.lang JavaScript) $ pre.code $ code (@insert code/variables-and-constants.js)
      .case (.name "Explicit Types") $ .pair
        .card (.lang Swift) $ pre.code $ code (@insert code/explicit-types.swift)
        .card (.lang Kotlin) $ pre.code $ code (@insert code/explicit-types.kt)
        .card (.lang JavaScript) $ pre.code $ code (@insert code/explicit-types.js)
      .case (.name "Type Coercion") $ .pair
        .card (.lang Swift) $ pre.code $ code (@insert code/type-coercion.swift)
        .card (.lang Kotlin) $ pre.code $ code (@insert code/type-coercion.kt)
        .card (.lang JavaScript) $ pre.code $ code (@insert code/type-coercion.js)
      .case (.name "String Interpolation") $ .pair
        .card (.lang Swift) $ pre.code $ code (@insert code/string-interpolation.swift)
        .card (.lang Kotlin) $ pre.code $ code (@insert code/string-interpolation.kt)
        .card (.lang JavaScript) $ pre.code $ code (@insert code/string-interpolation.js)
      .case (.name "Range Operator") $ .pair
        .card (.lang Swift) $ pre.code $ code (@insert code/range-operator.swift)
        .card (.lang Kotlin) $ pre.code $ code (@insert code/range-operator.kt)
        .card (.lang JavaScript) $ pre.code $ code (@insert code/range-operator.js)
      .case (.name "Inclusive Range Operator") $ .pair
        .card (.lang Swift) $ pre.code $ code (@insert code/inclusive-range-operator.swift)
        .card (.lang Kotlin) $ pre.code $ code (@insert code/inclusive-range-operator.kt)
        .card (.lang JavaScript) $ pre.code $ code (@insert code/inclusive-range-operator.js)

    .section
      .title BASICS
      .case (.name "Arrays") $ .pair
        .card (.lang Swift) $ pre.code $ code (@insert code/arrays.swift)
        .card (.lang Kotlin) $ pre.code $ code (@insert code/arrays.kt)
        .card (.lang JavaScript) $ pre.code $ code (@insert code/arrays.js)
      .case (.name "Maps") $ .pair
        .card (.lang Swift) $ pre.code $ code (@insert code/maps.swift)
        .card (.lang Kotlin) $ pre.code $ code (@insert code/maps.kt)
        .card (.lang JavaScript) $ pre.code $ code (@insert code/maps.js)
      .case (.name "Empty Collections") $ .pair
        .card (.lang Swift) $ pre.code $ code (@insert code/empty-collections.swift)
        .card (.lang Kotlin) $ pre.code $ code (@insert code/empty-collections.kt)
        .card (.lang JavaScript) $ pre.code $ code (@insert code/empty-collections.js)

    .section
      .title FUNCTIONS
      .case (.name "Functions") $ .pair
        .card (.lang Swift) $ pre.code $ code (@insert code/functions.swift)
        .card (.lang Kotlin) $ pre.code $ code (@insert code/functions.kt)
        .card (.lang JavaScript) $ pre.code $ code (@insert code/functions.js)
      .case (.name "Tuple Return") $ .pair
        .card (.lang Swift) $ pre.code $ code (@insert code/tuple-return.swift)
        .card (.lang Kotlin) $ pre.code $ code (@insert code/tuple-return.kt)
        .card (.lang JavaScript) $ pre.code $ code (@insert code/tuple-return.js)
      .case (.name "Variable Number Of Arguments") $ .pair
        .card (.lang Swift) $ pre.code $ code (@insert code/variable-number-of-arguments.swift)
        .card (.lang Kotlin) $ pre.code $ code (@insert code/variable-number-of-arguments.kt)
        .card (.lang JavaScript) $ pre.code $ code (@insert code/variable-number-of-arguments.js)
      .case (.name "Function Type") $ .pair
        .card (.lang Swift) $ pre.code $ code (@insert code/function-type.swift)
        .card (.lang Kotlin) $ pre.code $ code (@insert code/function-type.kt)
        .card (.lang JavaScript) $ pre.code $ code (@insert code/function-type.js)
      .case (.name "Map") $ .pair
        .card (.lang Swift) $ pre.code $ code (@insert code/map.swift)
        .card (.lang Kotlin) $ pre.code $ code (@insert code/map.kt)
        .card (.lang JavaScript) $ pre.code $ code (@insert code/map.js)
      .case (.name "Sort") $ .pair
        .card (.lang Swift) $ pre.code $ code (@insert code/sort.swift)
        .card (.lang Kotlin) $ pre.code $ code (@insert code/sort.kt)
        .card (.lang JavaScript) $ pre.code $ code (@insert code/sort.js)
      .case (.name "Named Arguments") $ .pair
        .card (.lang Swift) $ pre.code $ code (@insert code/named-arguments.swift)
        .card (.lang Kotlin) $ pre.code $ code (@insert code/named-arguments.kt)
        .card (.lang JavaScript) $ pre.code $ code (@insert code/named-arguments.js)

    .section
      .title CLASSES
      .case (.name "Declaration") $ .pair
        .card (.lang Swift) $ pre.code $ code (@insert code/declaration.swift)
        .card (.lang Kotlin) $ pre.code $ code (@insert code/declaration.kt)
        .card (.lang JavaScript) $ pre.code $ code (@insert code/declaration.js)
      .case (.name "Usage") $ .pair
        .card (.lang Swift) $ pre.code $ code (@insert code/usage.swift)
        .card (.lang Kotlin) $ pre.code $ code (@insert code/usage.kt)
        .card (.lang JavaScript) $ pre.code $ code (@insert code/usage.js)
      .case (.name "Subclass") $ .pair
        .card (.lang Swift) $ pre.code $ code (@insert code/subclass.swift)
        .card (.lang Kotlin) $ pre.code $ code (@insert code/subclass.kt)
        .card (.lang JavaScript) $ pre.code $ code (@insert code/subclass.js)
      .case (.name "Checking Type") $ .pair
        .card (.lang Swift) $ pre.code $ code (@insert code/checking-type.swift)
        .card (.lang Kotlin) $ pre.code $ code (@insert code/checking-type.kt)
        .card (.lang JavaScript) $ pre.code $ code (@insert code/checking-type.js)
      .case (.name "Pattern Matching") $ .pair
        .card (.lang Swift) $ pre.code $ code (@insert code/pattern-matching.swift)
        .card (.lang Kotlin) $ pre.code $ code (@insert code/pattern-matching.kt)
        .card (.lang JavaScript) $ pre.code $ code (@insert code/pattern-matching.js)
      .case (.name "Downcasting") $ .pair
        .card (.lang Swift) $ pre.code $ code (@insert code/downcasting.swift)
        .card (.lang Kotlin) $ pre.code $ code (@insert code/downcasting.kt)
        .card (.lang JavaScript) $ pre.code $ code (@insert code/downcasting.js)
      .case (.name "Protocol") $ .pair
        .card (.lang Swift) $ pre.code $ code (@insert code/protocol.swift)
        .card (.lang Kotlin) $ pre.code $ code (@insert code/protocol.kt)
        .card (.lang JavaScript) $ pre.code $ code (@insert code/protocol.js)
      .case (.name "Extensions") $ .pair
        .card (.lang Swift) $ pre.code $ code (@insert code/extensions.swift)
        .card (.lang Kotlin) $ pre.code $ code (@insert code/extensions.kt)
        .card (.lang JavaScript) $ pre.code $ code (@insert code/extensions.js)