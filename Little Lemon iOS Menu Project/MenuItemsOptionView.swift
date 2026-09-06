//
//  MenuItemsOptionView.swift
//  Little Lemon iOS Menu Project
//
//  Created by hicham fakir on 26/8/2026.
//

import SwiftUI

struct MenuItemsOptionView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("SELECTED CATEGORIES")) {
                    ForEach(SelectedCategory.allCases, id: \.self) { category in
                        Text(category.rawValue)
                    }
                }
                
                Section(header: Text("SORT BY")) {
                    ForEach(SortBy.allCases, id: \.self) { sort in
                        Text(sort.rawValue)
                    }
                }
            }
            .navigationTitle("Filter")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Done") {
                        presentationMode.wrappedValue.dismiss()
                    }
                }
            }
        }
    }
}
