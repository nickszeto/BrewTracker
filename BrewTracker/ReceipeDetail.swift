//
//  ReceipeDetail.swift
//  BrewTracker
//
//  Created by Nicholas Szeto on 30/12/21.
//

import SwiftUI

struct ReceipeDetail: View {
    var body: some View {
        VStack (alignment:.leading) {
            Text("Receipe")
                .font(.title)
            Text("Bean")
                .font(.title2)
            
            HStack {
                VStack (alignment:.leading){
                    Text("Dose")
                        .font(.headline)
                    Text("Dose Value")
                }
                Spacer()
                
                VStack (alignment:.leading){
                    Text("Yield")
                        .font(.headline)
                    Text("Yield Value")
                }
                Spacer()
                VStack (alignment:.leading){
                    Text("Time")
                        .font(.headline)
                    Text("Time Value")
                }
                
            }
        }
        .padding(.horizontal)
      
    }
}

struct ReceipeDetail_Previews: PreviewProvider {
    static var previews: some View {
        ReceipeDetail()
    }
}
