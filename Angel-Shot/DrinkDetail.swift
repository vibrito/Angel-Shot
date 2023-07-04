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
    let newDrink: Bool

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
            Section {
                Button(action: {
                    if self.newDrink {
                        drinkStorage.drinks.append(drink)
                    } else {
                        for x in 0..<self.drinkStorage.drinks.count {
                            if self.drinkStorage.drinks[x].id == drink.id {
                                self.drinkStorage.drinks[x] = self.drink
                            }
                        }
                    }
                    self.presentationMode.wrappedValue.dismiss()
                }) {
                    HStack {
                        Spacer()
                        Text("Save")
                        Spacer()
                    }
                }.disabled(drink.name.isEmpty)
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
