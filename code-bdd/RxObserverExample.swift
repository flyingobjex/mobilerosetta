import Foundation
import RxSwift

class RxObserverExample {

    let author:PublishSubject<Author> = PublishSubject<Author>()

    private var currentName:String? = nil
    private var currentAuthorID:Int? = nil

    private var dispose = DisposeBag()
    
    init() {
        author.subscribe(onNext:{ a in
            self.currentName = a.name
            self.currentAuthorID = a.id
        }).disposed(by: dispose)
    }

    func description() -> String {
        return "Author: \(currentName ?? "no name"), ID: \(currentAuthorID ?? 999)"
    }
}
