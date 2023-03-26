//
//  SignInViewModel.swift
//  Burger House
//
//  Created by Jovi on 26/03/2023.
//

import Foundation

class SignInViewModel: ObservableObject {
    
    @Published var email = ""
    @Published var password = ""
    
    func signIn() {
    }
}
