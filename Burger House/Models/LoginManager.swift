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
//  March 26, 2023

import Foundation
import RealmSwift


class LoginManager: Object {
    
    @Persisted var usr: User?

    static func saveUser(user:User) -> Bool {
        let realm = try! Realm()
        let loginManger = LoginManager()
        
        loginManger.usr = user
        clearDatabase()
        do {
            try realm.write {
                realm.add(loginManger)
            }
            return true
        } catch {
            print("Error saving user: \(error)")
            return false
        }
    }
    
    static func clearDatabase() -> Bool {
        let realm = try! Realm()
        let loginManagers = realm.objects(LoginManager.self)
        do {
            try realm.write {
                realm.delete(loginManagers)
            }
            return true
        } catch {
            print("Error clearing database: \(error)")
            return false
        }
    }
    
    static func getUser() -> User? {
        let realm = try! Realm()
        return realm.objects(LoginManager.self).first?.usr
    }

    
    static func login(username: String, password: String) -> User? {
        let realm = try! Realm()
        theme.applyAlternativeTheme()

        // Retrieve the user with the specified email address
        guard let user = realm.objects(User.self).filter("email CONTAINS[cd] %@", username).first else {
            // User not found
            return nil
        }
        print(user.password)
            
        // Compare the entered password with the user's password
        if user.password == password {
            // Passwords match, login successful
            let _ = LoginManager.saveUser(user: user)
            return user
        } else {
            // Passwords do not match, login failed
            return nil
        }
    }
    
    static func isLoggedIn()->Bool{
        if(getUser() == nil){
            return true
        }
        return false
    }
    
}
