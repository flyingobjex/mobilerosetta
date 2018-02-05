package org.mobilerosetta.mobilerosetta

import io.reactivex.subjects.PublishSubject

class RxObserverExample {

    val author = PublishSubject.create<Author>()

    private var currentName:String? = null
    private var currentAuthorID:Int? = null

    init {
        author.subscribe { a ->
            currentName = a.name
            currentAuthorID = a.id
        }
    }

    fun description():String {
        return "Author: ${currentName?: "no name"}, ID: ${currentAuthorID?: 999}"
    }
}