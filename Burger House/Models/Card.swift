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
//
//  Card.swift
//  Burger House
//
//  Created by Jovi on 12/04/2023.
//

import RealmSwift

class Card: Object, Identifiable {
    
    @Persisted var cardNumber: String?
    @Persisted var expiryDate: Date?
    @Persisted var cvv: String?
    @Persisted(primaryKey: true) var id: ObjectId = ObjectId.generate()
    
    convenience init(cardNumber: String?, expiryDate: Date?, cvv: String?) {
        self.init()
        self.cardNumber = cardNumber
        self.expiryDate = expiryDate
        self.cvv = cvv
    }
    
    func maskedNumbers()->String{
        let masked = "**** **** **** " + String(cardNumber!.suffix(4))

        return masked
    }
    
    static func getCards() -> [Card] {
        let card1 = Card(cardNumber: "4234567890123456", expiryDate: Date(timeIntervalSinceNow: 60 * 60 * 24 * 365 * 3), cvv: "123")
        let card2 = Card(cardNumber: "5876543210987654", expiryDate: Date(timeIntervalSinceNow: 60 * 60 * 24 * 365 * 4), cvv: "456")
        return [card1, card2]
    }
    
}
