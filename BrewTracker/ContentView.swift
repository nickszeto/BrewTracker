//
//  ContentView.swift
//  BrewTracker
//
//  Created by Nicholas Szeto on 17/12/21.
//

import SwiftUI

struct ContentView: View {
    
    var coffee: [Coffee] = []
    //var coffeeDetail : CoffeeDetail
    
    var body: some View {
        
        NavigationView {
            List(coffee) { coffee in
                NavigationLink(destination: Text(coffee.name)) {
                    HStack {
                        Image(systemName: "photo")
                        VStack(alignment: .leading) {
                            Text(coffee.name)
                            Text(coffee.roaster)
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                        }
                    }
                }
                .navigationTitle(Text("Coffee Beans"))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(coffee: coffeeData)
            
    }
}
