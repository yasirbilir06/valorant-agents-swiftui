import Foundation
import SwiftUI
import CoreLocation

struct SuperHeroUI: Identifiable {
    let id = UUID()
    var name: String
    var picture: String
    var city: String
    var rolü: String
    var koordinat: Koordinat

    var koordinatLokasyonu: CLLocationCoordinate2D {
        .init(latitude: koordinat.latitude, longitude: koordinat.longitude)
    }
}

struct Koordinat: Equatable, Codable {
    var latitude: Double
    var longitude: Double
}

let Jet = SuperHeroUI(
    name: "Jet",
    picture: "jet",
    city: "Güney Kore",
    rolü: "Düellocu",
    koordinat: .init(latitude: 37.548975791831246, longitude: 126.9892339602989)
)
let Gekko = SuperHeroUI(
    name: "Gekkó",
    picture: "gekko",
    city: "Los Angeles",
    rolü: "Öncü",
    koordinat: .init(latitude: 34.04704877114067, longitude: -118.27044043351789)
)
let Brimstone = SuperHeroUI(
    name: "Brimstone",
    picture: "brimstone",
    city: "Manhattan",
    rolü: "Kontrol Uzmanı",
    koordinat: .init(latitude: 40.76815543823669, longitude: -73.98038968441323)
    )
let Fade = SuperHeroUI(
    name: "Fade",
    picture: "fade",
    city: "Türkiye",
    rolü: "Öncü",
    koordinat: .init(latitude: 38.86440519520437, longitude: 35.25091028373338)
    
)
let Phonix = SuperHeroUI(
    name: "Phonix",
    picture: "phonix",
    city: "Birleşik Krallık",
    rolü: "Düellocu",
    koordinat: .init(latitude: 51.56815131630552, longitude: 0.3842793516682352)
    )

let SuperHeroUIArray = [Jet, Gekko, Brimstone, Fade, Phonix]

