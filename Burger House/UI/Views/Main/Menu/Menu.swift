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
//  Menu.swift
//  Burger House
//
//  Created by Jovi on 26/03/2023.
//

import SwiftUI
import MapKit

struct MenuView: View {
    @StateObject private var viewModel = HomeViewModel()
    
    @State private var region = MKCoordinateRegion(
           center: CLLocationCoordinate2D(latitude: 37.7749, longitude: -122.4194),
           span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)
       )

    
    private let annotations: [CustomAnnotation] = [
        CustomAnnotation(coordinate: CLLocationCoordinate2D(latitude: 37.7749, longitude: -122.4194))
    ]
    
        var body: some View {
            Map(coordinateRegion: $region, annotationItems: annotations) { annotation in
                        MapAnnotation(coordinate: annotation.coordinate) {
                            MarkerView()
                        }
                    }
                    .edgesIgnoringSafeArea(.all)
//                .frame(width: .infinity, height: .infinity)
        }
    
//    var body: some View {
//        ScrollView {
//            VStack {
//                ZStack {
//                    Image("header")
//                }.overlay(
//
//                    VStack (alignment: .leading ){
//                        Text("Menu")
//                            .fontWithLineHeight(font: UIFont(name: Constants.poppinsRegular, size: 70)!, lineHeight: 24)
//
//                        .foregroundColor(Color(hex: 0xE7B547))
//                        SizedBox(height: 10)
//                        Subtitle("Choose from our assorted menu")
//                        SizedBox(height: 10)
//
//                        RoundedTextField(placeholder: "Search your cravings", text: $viewModel.search)
//                    }
//
//                        .padding(.horizontal,20)
//                        .padding(.top, 200)
//                        .padding(.horizontal,20)
//
//                    ,alignment: .leading)
//
//                GridView(isMenuItem: true).padding(.horizontal,20)
//                    .padding(.horizontal,20)
//
//
//                Spacer()
//            }
//
//            .frame(maxWidth: .infinity, maxHeight: .infinity)
//
//        }   .ignoresSafeArea(.all)
//    }
}


struct MarkerView: View {
    var body: some View {
        Image(systemName: "mappin.circle.fill")
            .font(.system(size: 30))
            .foregroundColor(.red)
    }
}


struct CustomAnnotation: Identifiable {
    let id = UUID()
    let coordinate: CLLocationCoordinate2D
}
