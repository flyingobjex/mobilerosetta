import Foundation

class JsonExample {

    func parseJsonText(_ text:String) -> PageCollection? {
        let jsonData = text.data(using: .utf8)!
        let decoder = JSONDecoder()

        do {
            let pageCollection = try decoder.decode(PageCollection.self, from: jsonData)
            return pageCollection
        }

        catch let error {
            print("!! error = \(error.localizedDescription)")
        }

        return nil
    }
}
