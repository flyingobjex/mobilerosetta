import Foundation
import Quick
import Nimble

@testable import MobileRosetta

class JsonExampleSpec: QuickSpec {
    override func spec() {
        describe("JSon Parsing Example"){
            let example = JsonExample()
            let page = example.parse(ExampleData().json)! // force unwrap to streamline tests

            it("should map raw json keys 'pageid' to 'id', 'paragraphs_list' to 'paragraphs'"){
                expect(page.id).to(equal(313))
                expect(page.sections[0].sections![0].paragraphs.count)
            }

            it("should parse json data from string into page"){
                expect(page).toNot(beNil())
                expect(page.sections.count).to(equal(1))
                expect(page.sections[0].sections?[0].paragraphs[0].body).to(equal("Word4 word5 word6"))
                expect(page.title).to(equal("Wiki Page Title"))
            }
        }
    }
}


