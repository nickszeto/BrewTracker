//
//  CoffeeDetail.swift
//  BrewTracker
//
//  Created by Nicholas Szeto on 17/12/21.
//

import SwiftUI

struct CoffeeDetail: View {
    
       
    var body: some View {
        
        NavigationView {
            VStack (alignment: .leading){
                Image("BuenaVista")
                    .resizable()
                    .scaledToFit()
                    .padding(.horizontal)
                    .clipShape(Circle())
                    .offset(y: -60)
                
                VStack (alignment:.leading) {
                    HStack {
                        Text("Nicaragua")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                    HStack {
                        Text("Santa Maria De Lourdes")
                            .font(.title)
                    }
                    HStack {
                        Text("Sultanas, Dried Peach, Pine Nuts")
                            .font(.subheadline)
                    }
                }
                .padding(.horizontal)
                
                Divider()
                
                VStack (alignment: .leading){
                    HStack {
                        Text("Nylon Coffee Roaster")
                    }
                    .font(.headline)
                    .foregroundColor(Color.black)
                    
                    HStack {
                        Text("Espresso Roast")
                        Spacer()
                        Text("300g")
                    }
                    .font(.subheadline)
                    .foregroundColor(Color.black)
                }
                .padding(.horizontal)
                .font(.body)
                
                Divider()
                
                VStack(alignment:.leading) {
                    HStack {
                        Text("Producer")
                            .bold()
                        Spacer()
                        Text("Octavio Pleralta")
                    }
                    HStack {
                        Text("Variety")
                            .bold()
                        Spacer()
                        Text("Red Catuai")
                    }
                    HStack {
                        Text("Process")
                            .bold()
                        Spacer()
                        Text("Honey Anaerobic")
                    }
                }
                .padding(.horizontal)
                .font(.body)
                
                Divider()
            }
            .padding(.horizontal)
        }
    }
    func brewCoffee() {
        print("Brew")
    }
}

struct CoffeeDetail_Previews: PreviewProvider {
    static var previews: some View {
        CoffeeDetail()
            
    }
}
