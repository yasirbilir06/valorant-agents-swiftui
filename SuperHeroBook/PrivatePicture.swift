//
//  PrivatePicture.swift
//  SuperHeroBook
//
//  Created by Yasir Bilir on 15.01.2026.
//

import SwiftUI

struct PrivatePicture: View {
    let image: Image

    var body: some View {
        image
            .resizable()
            .scaledToFill()
            .frame(width: 200, height: 200)
            .clipShape(Circle())
            .background(
                Circle().fill(Color(.systemBackground))
            )
            .overlay(
                Circle().stroke(.white, lineWidth: 4)
            )
            .shadow(radius: 10)
            .accessibilityHidden(true)
    }
}

#Preview {
    PrivatePicture(image: Image("jet"))
}
