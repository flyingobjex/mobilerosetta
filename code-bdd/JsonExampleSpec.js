require('chai').should();
import {data} from "../src/Model"
import {parse} from "../src/JsonExample";

describe('Json Parsing Example', function () {
  let page = parse(data);

  it("it should map raw json keys 'pageid' to 'id', " +
      "'paragraphs_list' to 'paragraphs'", function () {
    page.id.should.equal(313);
    page.sections[0].sections[0].paragraphs.length.should.equal(2)
  });

  it('should parse json data from string into page', function () {
    page.should.not.equal(undefined);
    page.sections.length.should.equal(1);
    page.sections[0].sections[0].paragraphs[0].body.should.equal("Word4 word5 word6");
    page.title.should.equal("Wiki Page Title");
  })
});
