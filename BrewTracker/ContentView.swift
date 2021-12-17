//
//  ContentView.swift
//  BrewTracker
//
//  Created by Nicholas Szeto on 17/12/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                HStack {
                    Image(systemName: "photo")
                    VStack {
                        Text("Coffee Beans")
                        Text("Roaster")
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                }
            }
            .navigationBarTitle(Text("Coffee Beans"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
