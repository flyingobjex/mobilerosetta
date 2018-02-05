import Foundation

struct Page: Codable {
    let title:String?, pageid:Int?, author:Author?
}

struct Author: Codable {
    enum CodingKeys : String, CodingKey {
        case name
        case id = "author_id"
    }

    let name:String?, id:Int?
    init(_ name:String?, _ id:Int?) {
        self.name = name
        self.id = id
    }
    
}

struct PageCollection: Codable {
    enum CodingKeys : String, CodingKey {
        case title
        case entries = "entry_list"
    }

    let title:String?, entries:Array<Page>?
}
