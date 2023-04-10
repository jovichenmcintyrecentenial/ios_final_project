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
    
    static func login(username: String, password: String) -> User? {
        let realm = try! Realm()
            
        // Retrieve the user with the specified email address
        guard let user = realm.objects(User.self).filter("email CONTAINS[cd] %@", username).first else {
            // User not found
            return nil
        }
            
        // Compare the entered password with the user's password
        if user.password == password {
            // Passwords match, login successful
            return user
        } else {
            // Passwords do not match, login failed
            return nil
        }
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
