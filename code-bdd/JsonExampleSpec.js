import { expect } from 'chai';
import { parseJsonText } from "../src/JsonExample";

let jsonString = `
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
        "extra": "value ignored",
        "author": {
          "name": "Author 1",
          "author_id": 1422
        }
      }
    ]
  }`;

describe('Json Parsing Example', function(){

  let collection = parseJsonText(jsonString);

  it('should map raw json key author_id to id in Author data class', function(){
    expect(collection.entries[1].author.id).to.equal(1422);
  });


  it('should parse the json text into an object', function(){
    console.log("running test");
    expect(collection).to.be.a('object');
    expect(collection.title).to.equal("Main Collection");
    expect(collection.entries).to.be.a('array');
    expect(collection.entries.length).to.equal(2);
    expect(collection.entries[1].author.name).to.equal("Author 1");
  })
});
