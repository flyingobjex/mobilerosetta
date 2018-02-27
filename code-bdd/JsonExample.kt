package org.mobilerosetta.mobilerosetta
import com.squareup.moshi.KotlinJsonAdapterFactory
import com.squareup.moshi.Moshi

class JsonExample {

    fun parse(text: String): WikiPage? {
        val moshi = Moshi.Builder()
                .add(KotlinJsonAdapterFactory())
                .build()

        val jsonAdapter = moshi.adapter(WikiPage::class.java)
        try {
            jsonAdapter.fromJson(text)?.let { return it }

        } catch (e: Exception) {
            println("!! Exception !! e.message = ${e.message}")
            println(e)
        }

        return null
    }
}
