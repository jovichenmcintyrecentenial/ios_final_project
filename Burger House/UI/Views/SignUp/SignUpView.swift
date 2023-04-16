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
//  April 16, 2023
//  SignUpView.swift
//  Burger House
//
//  Created by Jovi on 26/03/2023.
//

import SwiftUI

//sign up view
struct SignupView: View {
    @StateObject var viewModel = SignupViewModel()
    @Environment(\.presentationMode) var presentationMode
    
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
                RoundedTextField(placeholder: "Password", text: $viewModel.password,isSecure: false)
                  
                SizedBox(height: 3)
                RoundedTextField(placeholder: "Confirm Password", text: $viewModel.confirmPassword,isSecure: false)
                    .textContentType(.password)
                SizedBox(height: 3)

               
            }
            .padding(.top, 20)
            MainButton(title: "Sign up") {
                if viewModel.isValid() {
                    viewModel.signup()
                    presentationMode.wrappedValue.dismiss()
                } else {
                   // Show error message to user indicating invalid form
                   print("Invalid form")
                   viewModel.showErrorAlert = true
                }

            }
            Spacer()
            
        }
        .padding(.horizontal,30)
        .background(theme.backgroundColor)
        .customNav()
        .alert(isPresented: $viewModel.showErrorAlert) {
            Alert(
                title: Text("Error"),
                message: Text(viewModel.errorMessage),
                dismissButton: .default(Text("OK"))
            )
        }
    }
}


struct SignupView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            SignupView()
        }
    }
}
