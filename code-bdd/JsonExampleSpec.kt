package org.mobilerosetta.mobilerosetta

import io.kotlintest.matchers.shouldBe
import io.kotlintest.specs.StringSpec

class JsonExampleSpec : StringSpec() {

    val example = JsonExample()

    init {

        val collection = example.parseJsonText(jsonString)

        "it should map raw json key 'author_id' to 'id' in Author data class" {
            collection?.entries?.get(1)?.author?.id shouldBe 1422
        }

        "parse json data from string" {
            collection?.entries?.count() shouldBe 2
            collection?.entries?.get(0)?.pageid shouldBe 2442
            collection?.entries?.get(1)?.title shouldBe "Second Model"
            collection?.entries?.get(1)?.author?.name shouldBe "Author 1"
        }

    }
}

val jsonString = """
{
    "title": "Main Collection",
    "entry_list": [
        {
            "title": "First Model",
            "pageid": 2442
        },
        {
            "title": "Second Model",
            "pageid": 2553,
            "author": {
                "name": "Author 1",
                "author_id": 1422
            }
        }
    ]
}
"""
