//
//  ContentView.swift
//  SuperHeroBook
//
//  Created by Yasir Bilir on 15.01.2026.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List(SuperHeroUIArray) { hero in
                NavigationLink(destination: DetailsView(secilenKahraman: hero)) {
                    Text(hero.name)
                }
            }
            .navigationTitle("Ajanlar")
        }
    }
}

#Preview {
    ContentView()
}
