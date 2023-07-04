//
//  DrinkList.swift
//  Angel-Shot
//
//  Created by Vinicius Brito on 5/19/23.
//

import SwiftUI

struct DrinkList: View {
    @EnvironmentObject var drinkStorage: DrinkStorage
    var body: some View {
        NavigationView {
            List {
                ForEach(drinkStorage.drinks, id: \.self) { currentDrink in
                    NavigationLink(destination: DrinkDetail(drink: currentDrink, newDrink: false)) {
                            Text(currentDrink.name).accessibilityIdentifier("name")
                        }
                }.onDelete { indexSet in
                    drinkStorage.drinks.remove(atOffsets: indexSet)
                }
            }.navigationTitle("Drinks").toolbar {
                ToolbarItem() {
                    NavigationLink(destination: DrinkDetail(drink: Drink(), newDrink: true)) {
                        Image(systemName: "plus.app.fill")
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        DrinkList()
    }
}
