//
//  CoffeeDetail.swift
//  BrewTracker
//
//  Created by Nicholas Szeto on 17/12/21.
//

import SwiftUI

struct CoffeeDetail: View {
     
    var body: some View {
             
        VStack (alignment: .leading){
            VStack (alignment:.leading) {
                HStack {
                    Text("Nicaragua")
                        .font(.subheadline)
                }
                HStack {
                    Text("SANTA MARIA de LOURDES")
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
                    Spacer()
                    Text("Octavio Pleralta")
                }
                HStack {
                    Text("Variety")
                    Spacer()
                    Text("Red Catuai")
                }
                HStack {
                    Text("Process")
                    Spacer()
                    Text("Honey Anaerobic")
                }
            }
            .padding(.horizontal)
            .font(.body)
        }
    }
}

struct CoffeeDetail_Previews: PreviewProvider {
    static var previews: some View {
        CoffeeDetail()
            
    }
}
