//
//  DetailsView.swift
//  SuperHeroBook
//
//  Created by Yasir Bilir on 15.01.2026.
//

import SwiftUI

private extension View {
    func cardStyle(cornerRadius: CGFloat = 12, shadow: CGFloat = 4) -> some View {
        self
            .clipShape(RoundedRectangle(cornerRadius: cornerRadius, style: .continuous))
            .shadow(radius: shadow, y: shadow / 2)
    }
}

struct DetailsView: View {
    var secilenKahraman: SuperHeroUI

    var body: some View {
        ZStack {
            Color.gray.opacity(0.12).ignoresSafeArea()

            ScrollView {
                VStack(spacing: 16) {
                    MapView(coordinate: secilenKahraman.koordinatLokasyonu)
                        .frame(height: 240)
                        .cardStyle()
                        .padding(.horizontal)

                    PrivatePicture(image: Image(secilenKahraman.picture))
                        .frame(maxWidth: .infinity, minHeight: 200, maxHeight: 260)
                        .cardStyle(cornerRadius: 16, shadow: 6)
                        .padding(.horizontal)

                    VStack(alignment: .leading, spacing: 8) {
                        Text(secilenKahraman.name)
                            .font(.largeTitle.bold())
                            .foregroundColor(.primary)
                            .padding(.bottom)

                        HStack(alignment: .firstTextBaseline) {
                            Text(secilenKahraman.rolü).font(.title2).foregroundStyle(.secondary)
                            Spacer()
                            Text(secilenKahraman.city).font(.title3).foregroundStyle(.purple)
                        }
                    }
                    .padding(.horizontal)
                    .padding(.bottom, 8)
                }
                .padding(.vertical)
            }
        }
    }
}

#Preview {
    DetailsView(secilenKahraman: Gekko)
      
}
