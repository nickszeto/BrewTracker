//
//  ReceipeDetail.swift
//  BrewTracker
//
//  Created by Nicholas Szeto on 30/12/21.
//

import SwiftUI

struct ReceipeDetail: View {
    
    // Coffee brewing settings
    @State private var brewTime: Double = 240
    @State private var yieldAmount: Double = 400
    @State private var coffeeAmount: Double = 20
    @State private var grindSize: String = "Medium"
    @State private var brewMethod: String = "Espresso"
    
    var body: some View {
        NavigationView{
            ScrollView{
                VStack {
                    ForEach(0...30, id:\ .self) { num in
                        ReceipeDetailView()
                            .padding(.bottom,20)
                    }
                }
            }
        }
        .navigationTitle("My Receipe")
    }
}

struct ReceipeDetailView: View {
    var body: some View {
        VStack {
            Image("coffee")
                .resizable()
                .frame(width: 400, height: 4000, alignment: .center)
                .background(Color(.secondarySystemBackground))
         
            
            HStack {
                Text("Flat White")
            }
        }
    }
}

struct ReceipeDetail_Previews: PreviewProvider {
    static var previews: some View {
        ReceipeDetail()
    }
}
