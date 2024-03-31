//
//  Brew.swift
//  BrewTracker
//
//  Created by Nicholas Szeto on 21/12/21.
//

import Foundation
import SwiftUI

struct Brew  {
    var brewid = UUID ()
    var dose: Int
    var yield: Int
    var time: Int
    
    var acidity: Int
    var bitterness: Int
    var sweetness: Int
    var coffeeBody: Int
    
}
