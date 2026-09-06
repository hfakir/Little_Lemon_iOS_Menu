//
//  MenuItemsView.swift
//  Little Lemon iOS Menu Project
//
//  Created by hicham fakir on 26/8/2026.
//

import SwiftUI

struct MenuItemsView: View {
    @StateObject private var viewModel = MenuViewModel()
    @State private var showingOptions = false
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    Text("Menu")
                        .font(.largeTitle)
                        .bold()
                        .padding(.horizontal)
                    
                    Section(header: Text("Food").font(.headline).padding(.horizontal)) {
                        LazyVGrid(columns: columns, spacing: 15) {
                            ForEach(viewModel.foodItems) { item in
                                NavigationLink(destination: MenuItemDetailsView(item: item)) {
                                    VStack {
                                        Rectangle()
                                            .fill(Color.black)
                                            .frame(height: 80)
                                            .cornerRadius(8)
                                        Text(item.title)
                                            .font(.caption)
                                            .foregroundColor(.primary)
                                    }
                                }
                            }
                        }
                        .padding(.horizontal)
                    }
                    
                    Section(header: Text("Drinks").font(.headline).padding(.horizontal)) {
                        LazyVGrid(columns: columns, spacing: 15) {
                            ForEach(viewModel.drinkItems) { item in
                                NavigationLink(destination: MenuItemDetailsView(item: item)) {
                                    VStack {
                                        Rectangle()
                                            .fill(Color.black)
                                            .frame(height: 80)
                                            .cornerRadius(8)
                                        Text(item.title)
                                            .font(.caption)
                                            .foregroundColor(.primary)
                                    }
                                }
                            }
                        }
                        .padding(.horizontal)
                    }
                    
                    Section(header: Text("Dessert").font(.headline).padding(.horizontal)) {
                        LazyVGrid(columns: columns, spacing: 15) {
                            ForEach(viewModel.dessertItems) { item in
                                NavigationLink(destination: MenuItemDetailsView(item: item)) {
                                    VStack {
                                        Rectangle()
                                            .fill(Color.black)
                                            .frame(height: 80)
                                            .cornerRadius(8)
                                        Text(item.title)
                                            .font(.caption)
                                            .foregroundColor(.primary)
                                    }
                                }
                            }
                        }
                        .padding(.horizontal)
                    }
                }
            }
            .navigationBarTitle("Little Lemon", displayMode: .inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        showingOptions.toggle()
                    }) {
                        Image(systemName: "slider.horizontal.3")
                    }
                }
            }
            .sheet(isPresented: $showingOptions) {
                MenuItemsOptionView()
            }
        }
    }
}
