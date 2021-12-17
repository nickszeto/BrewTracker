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
            HStack {
                Text("Coffee Name")
                    .font(.title)
            }
            HStack {
                Text("Roaster")
                Spacer()
                Text("Weight")
                Spacer()
                Text("Roast Date")
            }
            .font(.subheadline)
            .foregroundColor(.secondary)
            
            Divider()
            
            Text("Coffee Profile")
            
            Divider()
            Text("Brew Receipe")
                .font(.title2)
            
            VStack (alignment:.leading){
                Text("Brew Time")
                
                Text("Dose")
                Text("Yield")
                Text("Acidity")
                Text("Sweetness")
                Text("Intensity")
                Text("Body")
            }
            
        }
        .padding()
        
        .navigationTitle("Coffee")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct CoffeeDetail_Previews: PreviewProvider {
    static var previews: some View {
        CoffeeDetail()
    }
}
