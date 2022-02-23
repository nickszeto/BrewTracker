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
            Text("Brew")
                .font(.title)
            
            Text("Espresso")
                .font(.title2)
            
            Divider()
            
            VStack {
                HStack {
                    Text("Dose")
                    Spacer()
                    Text("18g")
                }
                HStack {
                    Text("Yield")
                    Spacer()
                    Text("36g")
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
