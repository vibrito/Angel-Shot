//
//  DrinkDetail.swift
//  Angel-Shot
//
//  Created by Vinicius Brito on 5/19/23.
//

import SwiftUI

struct DrinkDetail: View {
    
    @State var drink: Drink
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var drinkStorage: DrinkStorage

    var body: some View {
        List {
            Section {
                SectionTitle(title: "Name")

                TextField("Drink name", text: $drink.name)
            }
            Section {
                
                SectionTitle(title: "Ingredients")
                
                TextField("Drink ingredients", text: $drink.ingredients)
            }
            Section {
                SectionTitle(title: "Price")

                TextField("Drink price", text:  $drink.price)
            }
        }.listStyle(GroupedListStyle())
    }
}
    
struct SectionTitle: View {
    var title: String
    
    var body: some View {
        Text(title).font(.caption).foregroundColor(.green)
    }
}
