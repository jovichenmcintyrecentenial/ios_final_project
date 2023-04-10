//
//  ErrorHandlingProtocol.swift
//  Burger House
//
//  Created by Jovi on 10/04/2023.
//

import Foundation
import SwiftUI

import SwiftUI
import Combine

class ErrorHandling: ObservableObject {
    @Published var errorMessage: String = ""
    @Published var showErrorAlert: Bool = false
    
    func isValid()->Bool{
        return false
    }
}
