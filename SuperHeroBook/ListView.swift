//
//  ContentView.swift
//  SuperHeroBook
//
//  Created by Yasir Bilir on 15.01.2026.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color(.red)
                    .opacity(1)
                    .ignoresSafeArea() // tüm ekranı kaplasın

                List(SuperHeroUIArray) { hero in
                    NavigationLink(destination: DetailsView(secilenKahraman: hero)) {
                        ListRowView(superhero: hero)
                    }
                }
                .listStyle(.plain)
                .scrollContentBackground(.hidden) // listenin default arka planını gizle
            }
            .navigationTitle("Ajanlar")
        }
    }
}


#Preview {
    ListView()
}
