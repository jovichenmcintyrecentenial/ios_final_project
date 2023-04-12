import Foundation
import RealmSwift


class LoginManger {
    
    static var user:User? = nil

    static func login(username: String, password: String) -> User? {
        let realm = try! Realm()
            
        // Retrieve the user with the specified email address
        guard let user = realm.objects(User.self).filter("email CONTAINS[cd] %@", username).first else {
            // User not found
            return nil
        }
        print(user.password)
            
        // Compare the entered password with the user's password
        if user.password == password {
            // Passwords match, login successful
            LoginManger.user = user
            return user
        } else {
            // Passwords do not match, login failed
            return nil
        }
    }
    
    static func isLoggedIn()->Bool{
        if(user == nil){
            return true
        }
        return false
    }
    
}
