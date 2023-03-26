//
//  SignUpView.swift
//  Burger House
//
//  Created by Jovi on 26/03/2023.
//

import SwiftUI

struct SignupView: View {
    @StateObject var viewModel = SignupViewModel()
    
    var body: some View {
        VStack {
            SizedBox(height: 10)
            Image("logo-text")
            SizedBox(height: 10)
            Title("Create Account")
            SizedBox(height: 10)
            VStack{
                RoundedTextField(placeholder: "First Name", text: $viewModel.firstName)
                SizedBox(height: 3)
                RoundedTextField(placeholder: "Last Name", text: $viewModel.lastName)
                SizedBox(height: 3)
                RoundedTextField(placeholder: "Email", text: $viewModel.email)
                    .keyboardType(.emailAddress)
                SizedBox(height: 3)
                RoundedTextField(placeholder: "Password", text: $viewModel.password,isSecure: true)
                  
                SizedBox(height: 3)
                RoundedTextField(placeholder: "Confirm Password", text: $viewModel.confirmPassword,isSecure: true)
                    .textContentType(.password)
                SizedBox(height: 3)

               
            }
            .padding(.top, 20)
            MainButton(title: "Sign up") {
                viewModel.signup()
            }
            Spacer()
            
        }
        .padding(.horizontal,30)
        .background(theme.backgroundColor)
        .customNav()
    }
}


struct SignupView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            SignupView()
        }
    }
}
