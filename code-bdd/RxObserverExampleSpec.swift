import Foundation
import Quick
import Nimble
import RxSwift

@testable import MobileRosetta

class RxObserverExampleSpec: QuickSpec {
    override func spec() {

        describe("The RxObserver example"){
            var example:RxObserverExample = RxObserverExample()
            var dispose:DisposeBag = DisposeBag()
            
            beforeEach {
                example = RxObserverExample()
                dispose = DisposeBag()
            }
            
            it("given an observable author, when an update is made, a given code block should run"){
                let _ = example.author.subscribe({ event in
                    expect(event.element?.id).to(equal(2223))
                })
                
                example.author.subscribe({
                    expect($0.element?.name).to(equal("New Author"))
                }).disposed(by: dispose)
                
                example.author.onNext(Author("New Author", 2223))
            }
            
            it("when a subscription is updated, it should reflect the new values"){
                example.author.onNext(Author("Next Author", 1414))
                expect(example.description()).to(equal("Author: Next Author, ID: 1414"))
            }
            
            it("given an author with no name or id, it should return 'no name' and 999"){
                example.author.onNext(Author(nil, nil))
                expect(example.description()).to(equal("Author: no name, ID: 999"))
            }
            
            it("optional code block should execute") {
                let _ = example.author.subscribe({
                    if let id = $0.element?.id {
                        print("block should execute")
                        expect(id).to(equal(3322))
                    }
                    
                    if let _ = $0.element?.name {
                        print("!! code should not execute !!")
                    }
                })
                
                example.author.onNext(Author(nil, 3322))
            }
        }
    }
}
