//
//  Angel_ShotApp.swift
//  Angel-Shot
//
//  Created by Vinicius Brito on 5/19/23.
//

import SwiftUI

@main
struct Angel_ShotApp: App {
    var body: some Scene {
        WindowGroup {            
            let drinkStorage = DrinkStorage()
            DrinkList().environmentObject(drinkStorage)
        }
    }
}
