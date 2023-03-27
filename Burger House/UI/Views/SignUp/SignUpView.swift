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
//  SignUpView.swift
//  Burger House
//
//  Created by Jovi on 26/03/2023.
//

import SwiftUI

//sign up view
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
