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
    var price = "R$ 10,00"
    var ingredients = ""
}

class DrinkStorage: ObservableObject {
    @Published var drinks = [
        Drink(id: UUID(), name: "Angel Shot", price: "R$ 50,00", ingredients: "Peça esse drink caso esteja se sentindo insegura. Peça sem gelo se quer que o garçom lhe acompanhe até seu carro. Peça com gelo se quer que o garçom chame um táxi e lhe acompanhe até a porta discretamente. Peça com limão se quer que o garçom chame a polícia.")
    ]
}
