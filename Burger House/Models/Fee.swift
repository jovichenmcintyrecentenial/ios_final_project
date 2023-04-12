import Foundation
import RealmSwift

class Fee {
     var name: String?
     var price: Double?
    
    convenience init(name: String?, price: Double?) {
        self.init()
        self.name = name
        self.price = price
    }
}
