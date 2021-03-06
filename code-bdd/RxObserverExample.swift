import Foundation
import RxSwift

class RxObserverExample {

    let section: BehaviorSubject&lt;Section> =
            BehaviorSubject&lt;Section>(value: Section("++", [Paragraph](), [Section]()))

    private (set) var details: String = "H:++, P:++, S:++"  // private setter, public getter

    init() {
        section.subscribe(onNext: { it in                   // Rx subscription
            print("onNext() section heading = \(it.heading)")
            self.details =
            "H:\(it.heading ?? "--"), " +          // conditional assignment ??
            "P:\(it.paragraphs.count), " +
            "S:\(it.sections?.count ?? -1)"    // conditional assignment ??
        })
    }

    var description: String {  // getter
        get {
            return "Details for section :: " + details
        }
    }
}
