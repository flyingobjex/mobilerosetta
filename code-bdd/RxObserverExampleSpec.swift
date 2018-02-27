import Foundation
import Quick
import Nimble
import RxSwift

@testable import MobileRosetta

class RxObserverExampleSpec: QuickSpec {
    override func spec() {
        describe("The RxObserver example") {

            it("given an observable Section, when an update is made, " +
                    "then it should send values to the subscribers " +
                    "causing the 'subscribe' code block to run") {
                let example = RxObserverExample()
                expect(example.details).to(equal("H:++, P:0, S:0"))

                var values = ""
                example.section.subscribe(onNext: { it in
                    values += it.heading! + ","      // conditional assignment
                })

                example.section.onNext(Section("H1", [Paragraph(1, "")], [Section]()))
                expect(example.details).to(equal("H:H1, P:1, S:0"))

                example.section.onNext(Section("H2", [Paragraph](), nil))
                expect(example.description).to(equal("Details for section :: H:H2, P:0, S:-1"))

                expect(values).to(equal("++,H1,H2,"))
            }
        }
    }
}
