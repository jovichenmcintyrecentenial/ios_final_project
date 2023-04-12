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
        center: CLLocationCoordinate2D(latitude: 43.6532, longitude: -79.3832),
        span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)
    )
    
    private let annotations: [CustomAnnotation] = [
        CustomAnnotation(coordinate: CLLocationCoordinate2D(latitude: 43.6532, longitude: -79.3832)),
        CustomAnnotation(coordinate: CLLocationCoordinate2D(latitude: 43.6815, longitude: -79.3755)),
        CustomAnnotation(coordinate: CLLocationCoordinate2D(latitude: 43.7228, longitude: -79.3451)),
        CustomAnnotation(coordinate: CLLocationCoordinate2D(latitude: 43.6555, longitude: -79.4157)),
        CustomAnnotation(coordinate: CLLocationCoordinate2D(latitude: 43.7422, longitude: -79.3268)),
        CustomAnnotation(coordinate: CLLocationCoordinate2D(latitude: 43.6492, longitude: -79.4528)),
        CustomAnnotation(coordinate: CLLocationCoordinate2D(latitude: 43.6863, longitude: -79.4178)),
        CustomAnnotation(coordinate: CLLocationCoordinate2D(latitude: 43.6680, longitude: -79.4044))
    ]
    
        var body: some View {
            Map(coordinateRegion: $region, annotationItems: annotations) { annotation in
                        MapAnnotation(coordinate: annotation.coordinate) {
                            MarkerView()
                        }
                    }
                    .edgesIgnoringSafeArea(.all)
         }

}


struct MarkerView: View {
    var body: some View {
        Image("logo-map-pin")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 40, height: 40)
            .foregroundColor(.red)
    }
}



struct CustomAnnotation: Identifiable {
    let id = UUID()
    let coordinate: CLLocationCoordinate2D
}
