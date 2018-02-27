export class WikiPage {
  constructor(title = "none", id = -1, sections = []) {
    this.title = title;
    this.id = id;
    this.sections = sections;
  }
}

export class Section {
  constructor(heading = "--", paragraphs = [], sections = []) {
    this.heading = heading;
    this.paragraphs = paragraphs;
    this.sections = sections;
  }
}

export class Paragraph {
  constructor(id = -1, body = "--") {
    this.id = id;
    this.body = body;
  }
}

export let data =
`{
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
                  ]}]}]}`;
