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
    @State private var searchText = ""
    @State private var selectedTab = 1
    
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
                .searchable(text: $searchText)
                .toolbar {
                    ToolbarItem (placement:.navigationBarTrailing){
                        Button (action: {} ) {
                            Image(systemName: "person.fill")
                                .foregroundColor(.blue)
                        }
                    }
                }
            }
            .tabItem{
                Label ("Beans", systemImage: "list.dash")
            }
            //Tab 2
            ReceipeDetail()
                .tabItem {
                    Label("Brew", systemImage: "square.and.pencil")
                }
            //Tab 3 - User
            User()
                .tabItem {
                    Label("Barista", systemImage: "person.crop.circle")
            }
        }
        .accentColor(.brown)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(coffee: coffeeData)
            
    }
}
