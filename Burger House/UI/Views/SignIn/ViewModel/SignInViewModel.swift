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
//  SignInViewModel.swift
//  Burger House
//
//  Created by Jovi on 26/03/2023.
//

import Foundation

class SignInViewModel: ErrorHandling {
    
    @Published var email = ""
    @Published var password = ""
    
    override func isValid() -> Bool {

        // Check if email and password fields are not empty
        if email.isEmpty {
            errorMessage = "Please enter your email address."
            showErrorAlert = true
            return false
        }
        
        if password.isEmpty {
            errorMessage = "Please enter your password."
            showErrorAlert = true
            return false
        }
            
        // Check if email field contains a valid email address
        if !email.isValidEmail() {
            errorMessage = "Please enter a valid email address."
            showErrorAlert = true
            return false
        }
        
        // If all validations pass, return true
        return true
    }
    
    func isValidCredenticals()->Bool {
        if (LoginManager.login(username: email, password: password) != nil) {
           return true
        } else {
            return false
        }
    }
}
