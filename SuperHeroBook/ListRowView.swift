//
//  ListRowView.swift
//  SuperHeroBook
//
//  Created by Yasir Bilir on 16.01.2026.
//

import SwiftUI

struct ListRowView: View {
    var superhero : SuperHeroUI
    var body: some View {
        HStack{
            
            Image(superhero.picture)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150, height: 150 , alignment: .leading)
                
                
                Spacer()
            VStack{
                Text(superhero.name).font(.title)
                    .fontWeight(.bold)
                
                Text(superhero.rolü).font(.title3)
                    .foregroundColor(.red)
            
        }
            Spacer()
        }
    }
}

#Preview {
    ListRowView(superhero: Phonix)
}
