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
//
//  SignIn.swift
//  Burger House
//
//  Created by Jovi on 26/03/2023.
//

import SwiftUI

struct SignInView: View {
    @StateObject var viewModel = SignInViewModel()
    
    var body: some View {
        VStack {
            VStack {
                Spacer()
                Image("logo-full")
                SizedBox(height: 10)
                RoundedTextField(placeholder: "Email", text: $viewModel.email)
                RoundedTextField(placeholder: "Password", text: $viewModel.password)
                    .textContentType(.password)
                SizedBox(height: 10)
                MainButton(title: "Login",onTap:  {
                    viewModel.signIn()
                }, clickable:false)
                .navigation(to: MainView())
                ButtonText(title: "Forget Password")
                    .navigation(to: MainView())
                Spacer()

                HStack {
                    ButtonText(title: "Don’t have an account?", fontSize: 16, color:Color(hex:0xA2A7BA) )
                    ButtonText(title: "Create Account", fontSize: 16 )
                }
                .navigation(to: SignupView())

            }
            .padding(.horizontal,30)
          
        }
        .background(theme.backgroundColor)
    }
}


struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}


