//
//  ContentView.swift
//  BrewTracker
//
//  Created by Nicholas Szeto on 17/12/21.
//

import SwiftUI

struct ContentView: View {
    var coffee: [Coffee] = []
    
    var body: some View {
        NavigationView {
            List(coffee) { coffee in
                HStack {
                    Image(systemName: "photo")
                    VStack(alignment: .leading) {
                        Text(coffee.name)
                        Text(coffee.roaster)
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                }
                .navigationTitle(Text("My Coffee"))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(coffee: testData)
    }
}
