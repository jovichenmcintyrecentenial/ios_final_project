//  GROUP NUMBER: 18
//  NAMES:
//  Clinton Nwadiukor  - 301291242
//  Jovi Chen-Mcintyre - 301125059
//  Vaishnavi Santhapuri - 301307031
//  Kowndinya Varanasi - 301210621
//
//  DESCRIPTION:
//  Burger House app is a mobile application designed to
//  simplify the process of ordering burgers and other fast
//  foods. It allows users to easily browse the menu, complete orders
//
//  REVISION HISTORY:
//  https://github.com/jovichenmcintyrecentenial/ios_final_project/commits/main
//
//  DATE LAST MODIFIED:
//  April 16, 2023
//  CartViewModel.swift
//  Burger House
//
//  Created by Jovi on 26/03/2023.
//

import Foundation
import RealmSwift

class CartViewModel: ObservableObject {
    
    @Published var isEmpty = true
    @Published var results:Results<MenuItem>
    @Published var total:String = "0"

    
    var observer:NSObjectProtocol?
    
    init(){
        total = Cart.getTotalFormatted()
        results = Cart.getItems()
        let observer = NotificationCenter.default.addObserver(forName: Notification.Name.updateCart, object: nil, queue: nil, using: handleNotification)
    }
    
    func handleNotification(_ notification: Notification) {
        total = Cart.getTotalFormatted()
        print("Received notification: \(notification)")
    }

   

    deinit{
        NotificationCenter.default.removeObserver(observer!)
    }
    

}
