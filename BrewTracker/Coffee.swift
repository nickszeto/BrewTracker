//
//  Coffee.swift
//  BrewTracker
//
//  Created by Nicholas Szeto on 17/12/21.
//

import Foundation
import SwiftUI

struct Coffee : Identifiable {
    var id = UUID()
    var name: String
    var roaster: String
    var roastDate: String
    var weight: Int
    var brewType: String
    
    var imageName: String { return name}
    var thumbNailName: String {return name + "Thumb"}
    
}
#if DEBUG
let coffeeData = 	[
    Coffee(name: "Los Brumas", roaster:"Nylon Coffee", roastDate:"01/12/2021",weight: 200, brewType: "Filter"),
    Coffee(name: "La Estrella", roaster:"Common Man Coffee Roasters", roastDate:"01/12/2021",weight: 250,brewType: "Filter" ),
    Coffee(name: "Esmeralda", roaster:"Five Oars Coffee Roasters", roastDate:"01/12/2021",weight: 150, brewType: "Filter"),
    Coffee(name: "Jesus Mountain", roaster:"Nylon Coffee", roastDate:"01/12/2021",weight: 200, brewType: "Filter"),
    Coffee(name: "Buena Vista", roaster:"Nylon Coffee", roastDate:"01/12/2021",weight: 200, brewType: "Filter"),
    Coffee(name: "Los Aguijotes", roaster:"Nylon Coffee", roastDate:"01/12/2021",weight: 200, brewType: "Filter"),
    Coffee(name: "Nensebo", roaster:"Nylon Coffee", roastDate:"01/12/2021",weight: 200, brewType: "Filter"),
    Coffee(name: "AAGatomboya", roaster:"Nylon Coffee", roastDate:"01/12/2021",weight: 200, brewType: "Filter")
]
#endif
