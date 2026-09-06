//
//  MenuItemDetailsView.swift
//  Little Lemon iOS Menu Project
//
//  Created by hicham fakir on 26/8/2026.
//

import SwiftUI

struct MenuItemDetailsView: View {
    var item: MenuItem
    
    var body: some View {
        ScrollView {
            VStack(spacing: 12) {
                Text(item.title)
                    .font(.largeTitle)
                    .bold()
                
                Image("LittleLemon")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                
                VStack(spacing: 2) {
                    Text("Price:")
                        .font(.headline)
                    Text(String(format: "%.2f", item.price))
                        .font(.body)
                }
                
                VStack(spacing: 2) {
                    Text("Ordered:")
                        .font(.headline)
                    Text("1,000")
                        .font(.body)
                }
                
                VStack(spacing: 4) {
                    Text("Ingredients:")
                        .font(.headline)
                    
                    ForEach(item.ingredients, id: \.self) { ingredient in
                        Text(ingredient.rawValue.lowercased())
                            .font(.body)
                    }
                }
                .padding(.top, 5)
                
                Spacer()
            }
            .padding()
        }
        .navigationBarTitle("Menu", displayMode: .inline)
    }
}
