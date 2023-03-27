//{{update here}}
//  SignUpViewModel.swift
//  Burger House
//
//  Created by Jovi on 26/03/2023.
//

import Foundation

// This is a Swift class called SignupViewModel that is designed to handle user input and actions related to a signup form.
class SignupViewModel: ObservableObject {
    @Published var firstName = ""
    @Published var lastName = ""
    @Published var email = ""
    @Published var password = ""
    @Published var confirmPassword = ""
    
    func signup() {
        print("Signing up with email: \(email) and password: \(password)")
    }
}
