package org.mobilerosetta.mobilerosetta

import io.reactivex.subjects.BehaviorSubject

class RxObserverExample {

    val initialValue = Section("++", listOf(), listOf())
    val section = BehaviorSubject.create&lt;Section>()

    var details: String = "H:++, P:++, S:++"
        private set
    
    init {
        section.onNext(initialValue)
        section.subscribe {
            println("onNext() section heading = ${it.heading}")
            details =
                    "H:${it.heading
                            ?: "--"}, " +                // conditional assignment, elvis symbol
                    "P:${it.paragraphs.count()}, " +
                    "S:${it.sections?.count()
                            ?: -1}"      // optional method call, optional assignment, elvis symbol
        }
    }

    val description: String
        get() = "Details for section :: " + details  // getter shorthand
}
