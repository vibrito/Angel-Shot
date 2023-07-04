//
//  Drink.swift
//  Angel-Shot
//
//  Created by Vinicius Brito on 5/19/23.
//

import Foundation

struct Drink: Identifiable, Hashable {
    var id = UUID()
    var name = ""
    var price = "10.0"
    var ingredients = ""
}

class DrinkStorage: ObservableObject {
    @Published var drinks = [Drink]()
}
