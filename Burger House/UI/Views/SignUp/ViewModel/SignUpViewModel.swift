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
//  SignUpViewModel.swift
//  Burger House
//
//  Created by Jovi on 26/03/2023.
//

import Foundation

// This is a Swift class called SignupViewModel that is designed to handle user input and actions related to a signup form.
class SignupViewModel: ErrorHandling {
    @Published var firstName = ""
    @Published var lastName = ""
    @Published var email = ""
    @Published var password = ""
    @Published var confirmPassword = ""

    
    // Validation method
    override func isValid() -> Bool {
           // Check if all fields are filled
           guard !firstName.isEmpty,
                 !lastName.isEmpty,
                 !email.isEmpty,
                 !password.isEmpty,
                 !confirmPassword.isEmpty else {
               errorMessage = "Please fill in all fields."
               return false
           }
           
           // Check if email is valid
           guard email.isValidEmail() else {
               errorMessage = "Please enter a valid email address."
               return false
           }
           
           // Check if password and confirm password match
           guard password == confirmPassword else {
               errorMessage = "Passwords do not match."
               return false
           }
           
           // All validations passed
           errorMessage = "" // clear error message
           return true
    }
    
    // Signup method
    func signup() {
        let newUser = User(firstName: firstName, lastName: lastName, email: email, password: password)
        newUser.create()
    }
}

// Extension for email validation
extension String {
    func isValidEmail() -> Bool {
        let emailRegex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPredicate = NSPredicate(format:"SELF MATCHES %@", emailRegex)
        return emailPredicate.evaluate(with: self)
    }
}
