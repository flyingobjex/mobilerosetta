package org.mobilerosetta.mobilerosetta

data class WikiPage(
        val title: String = "none",  // default value in constructor
        private val pageid: Int = -1,  // re-mapping json
        val sections: List&lt;Section>) {
    val id = pageid // re-mapping json
}

data class Section(val heading: String?,
                   private val paragraphs_list: List&lt;Paragraph>,
                   val sections: List&lt;Section>? = null) { // default value in constructor
    val paragraphs = paragraphs_list // direct mapping in lieu of @Json meta tags
}

data class Paragraph(val paragraph_id: Int = -1,
                     val body: String) {
    val id = paragraph_id
}

class ExampleData {
    val json = """
{
  "title": "Wiki Page Title",
  "pageid": 313,
  "sections": [
    {
      "heading": "First Section",
      "paragraphs_list": [
        {
          "paragraph_id": 1,
          "body": "Word1 word2 word3"
        }
      ],
      "sections":[
        {
          "heading": "First SubSection",
          "paragraphs_list": [
            {
              "paragraph_id": 2,
              "body": "Word4 word5 word6"
            },
            {
              "paragraph_id": 3,
              "body": "Word7 word8 word9"
            }
]}]}]} """
}


