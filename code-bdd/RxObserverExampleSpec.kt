package org.mobilerosetta.mobilerosetta

import io.kotlintest.matchers.shouldBe
import io.kotlintest.specs.StringSpec

class RxObserverExampleSpec : StringSpec() {

    val example = RxObserverExample()

    init {

        "given an observable author, when an update is made, the code block should run" {
            example.author.subscribe { a ->
                a.name shouldBe "New Author"
                a.id shouldBe 2223
            }

            example.author.onNext(Author("New Author", 2223))
            example.description() shouldBe "Author: New Author, ID: 2223"
        }

        "when a subscription is updated, it should reflect the new values" {
            example.author.onNext(Author("Next Author", 1414))
            example.description() shouldBe "Author: Next Author, ID: 1414"
        }

        "given an author with no name or id, it should return 'no name' and 999" {
            example.author.onNext(Author(null, null))
            example.description() shouldBe "Author: no name, ID: 999"
        }

        "optional code block should execute" {
            example.author.subscribe { a ->
                a.id?.let{ 
                    println("block should execute")
                    it shouldBe 3322
                }
                a.name?.let{ println("!! should not execute !!") }
            }
            example.author.onNext(Author(null, 3322))
        }
    }
}