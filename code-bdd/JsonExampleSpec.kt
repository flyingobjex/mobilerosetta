package org.mobilerosetta.mobilerosetta

import io.kotlintest.matchers.shouldBe
import io.kotlintest.matchers.shouldNotBe
import io.kotlintest.specs.StringSpec

class JsonExampleSpec : StringSpec() {
    val example = JsonExample()

    init {

        val page = example.parse(ExampleData().json)!! // force unwrap helps streamline tests

        "should map raw json keys 'pageid' to 'id', 'paragraphs_list' to 'paragraphs'" {
            page.id shouldBe 313
            page.sections[0].sections!![0].paragraphs.count() shouldBe 2
        }

        "should parse json data from string into page" {
            page shouldNotBe null
            page.sections.count() shouldBe 1
            page.sections[0].sections!![0].paragraphs[0].body shouldBe "Word4 word5 word6"
            page.title shouldBe "Wiki Page Title"
        }
    }
}

