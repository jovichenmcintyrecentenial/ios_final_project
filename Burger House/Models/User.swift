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
//  User.swift
//  Burger House
//
//  Created by Clinton on 09/04/2023.
//

import Foundation
import RealmSwift

class User: Object {
    @Persisted(primaryKey: true) var _id: ObjectId
    @Persisted var firstName: String
    @Persisted var lastName: String
    @Persisted var email: String
    @Persisted var password: String
    
    convenience init(firstName: String, lastName: String, email: String, password: String) {
        self.init()
        self._id = ObjectId.generate()
        self.firstName = firstName
        self.lastName = lastName
        self.email = email
        self.password = password
    }
    

    //static function use to access data
    static func getItems()->Results<MenuItem>{
        let realm = try! Realm()
        return realm.objects(MenuItem.self)
    }
    func create(){
        let realm = try! Realm()
        
        do {
          try realm.write {
            realm.add(self)
          }
        } catch {
            
        }
     }
}
