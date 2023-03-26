//
//  HomeViewModel.swift
//  Burger House
//
//  Created by Jovi on 26/03/2023.
//

import SwiftUI
import Combine

class HomeViewModel: ObservableObject {
    @Published var search: String = ""
}
