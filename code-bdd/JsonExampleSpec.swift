import Foundation
import Quick
import Nimble

@testable import MobileRosetta

class JsonExampleSpec: QuickSpec {
    override func spec() {
        describe("The example"){
            let example = JsonExample()
            let collection = example.parseJsonText(jsonString)

            it("map raw json key 'author_id' to 'id' in Author data class") {
                guard let page = collection?.entries?[1] else {
                    expect("page should exist").to(equal(" but no page found"))
                    return
                }
                expect(page.author?.id).to(equal(1422))
            }

            it("parse json data from string") {
                expect(collection).toNot(beNil())
                expect(collection?.title).to(equal("Main Collection"))
                expect(collection?.entries?.count).to(equal(2))
                expect(collection?.entries?[1].author?.name).to(equal("Author 1"))
            }
        }
    }
}


let jsonString = """
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
}
"""
