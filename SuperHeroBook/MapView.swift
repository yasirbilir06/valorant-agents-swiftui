//
//  MapView.swift
//  SuperHeroBook
//
//  Created by Yasir Bilir on 15.01.2026.
//

import SwiftUI
import MapKit

struct MapView: View {
    let coordinate: CLLocationCoordinate2D

    var body: some View {
        Map(initialPosition: .region(
            MKCoordinateRegion(
                center: coordinate,
                span: .init(latitudeDelta: 0.1, longitudeDelta: 0.1)
            )
        ))
    }
}


#Preview {
    MapView(coordinate: SuperHeroUIArray[0].koordinatLokasyonu)
}
