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
        
        TabView {
            NavigationStack {
                List(coffee) { coffee in
                    NavigationLink(destination: CoffeeDetail()) {
                        HStack {
                            Image(systemName: "leaf")
                            VStack(alignment: .leading) {
                                Text(coffee.name)
                                Text(coffee.roaster)
                                    .font(.subheadline)
                                    .foregroundColor(.secondary)
                            }
                        }
                    }
                    .navigationTitle(Text("Beans"))
                }
            }
            .tabItem{
                Label ("Beans", systemImage: "list.dash")
            }
            
            ReceipeDetail()
                .tabItem {
                    Label("Brew Receipe", systemImage: "square.and.pencil")
                }
            Account()
                .tabItem {
                    Label("Account", systemImage: "person.crop.circle")
                }
        }  
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(coffee: coffeeData)
            
    }
}
