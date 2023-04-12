import Foundation
import RealmSwift

class OrderViewModel: ObservableObject {
    @Published var results: Results<Order>
    
    
    init() {
        self.results = Order.getItems()
        print( Order.getItems().count)
    }
    
}

