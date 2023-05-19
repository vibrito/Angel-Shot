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
            List(drinkStorage.drinks) { currentDrink in
                NavigationLink(destination: DrinkDetail(drink: currentDrink)) {
                    Text(currentDrink.name)
                }
            }.navigationTitle("Drinks").toolbar {
                ToolbarItem() {
                    NavigationLink(destination: DrinkDetail(drink: Drink())) {
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
