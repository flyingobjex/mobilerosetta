import Foundation

struct WikiPage: Codable {
    enum CodingKeys: String, CodingKey {
        case id = "pageid"
        case title
        case sections
    }
    let title: String, id: Int, sections: Array&lt;Section>

    init(_ title: String = "none",
         _ id:Int = -1,
         _ sections:Array&lt;Section>) {
        self.title = title
        self.id = id
        self.sections = sections
    }
}

struct Section: Codable {
    enum CodingKeys: String, CodingKey {
        case heading
        case paragraphs = "paragraphs_list"
        case sections
    }
    let heading: String?, paragraphs: Array&lt;Paragraph>, sections: Array&lt;Section>?

    init(_ heading:String?,
         _ paragraphs:Array&lt;Paragraph>,
         _ sections:Array&lt;Section>?){
        self.heading = heading
        self.paragraphs = paragraphs
        self.sections = sections
    }
}

struct Paragraph:Codable {
    enum CodingKeys: String, CodingKey {
        case id = "paragraph_id"
        case body
    }
    let id: Int, body: String

    init(_ id:Int, _ body:String){
        self.id = id
        self.body = body
    }
}

struct ExampleData {
    let json = """
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
            }]}]}]}
"""}
