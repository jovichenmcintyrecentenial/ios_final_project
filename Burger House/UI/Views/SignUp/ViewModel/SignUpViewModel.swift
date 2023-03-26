//
//  SignUpViewModel.swift
//  Burger House
//
//  Created by Jovi on 26/03/2023.
//

import Foundation

class SignupViewModel: ObservableObject {
    @Published var firstName = ""
    @Published var lastName = ""
    @Published var email = ""
    @Published var password = ""
    @Published var confirmPassword = ""
    
    func signup() {
        // Implement your signup logic here
        print("Signing up with email: \(email) and password: \(password)")
    }
}
