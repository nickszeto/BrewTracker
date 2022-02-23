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
            NavigationView {
                List(coffee) { coffee in
                    NavigationLink(destination: Text(coffee.name)) {
                        HStack {
                            Image(systemName: "leaf")
                            VStack(alignment: .leading) {
                                Text(coffee.roaster)
                                Text(coffee.name)
                                    .font(.subheadline)
                                    .foregroundColor(.secondary)
                            }
                        }
                    }
                    .navigationTitle(Text("Coffee Roasters"))
                    
                    
                }
            }
            .tabItem{
                Label ("Roasters", systemImage: "list.dash")
            }
            CoffeeDetail()
                .tabItem {
                    Label("Coffee Beans", systemImage: "leaf.circle")
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
