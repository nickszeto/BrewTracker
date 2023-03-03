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
        VStack {
            // Header
            HStack {
                Text("My Brew Receipe")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding()
                Spacer()
            }
            
            // Brew Type
            HStack {
                Text("Brew Method: ")
                Spacer()
                Picker(selection:$brewMethod, label:
                        Text("Method")) {
                        Text("Filter").tag("Filter")
                        Text("Espresso").tag("Espresso")
                }
                        .pickerStyle(SegmentedPickerStyle())
            }
            .padding()
            
            // Brew Time
            HStack {
                Text("Brew Time (seconds):")
                Spacer()
                Stepper(value: $brewTime, in: 60...600, step: 10) {
                    Text("\(Int(brewTime))")
                }
            }
            .padding()
            
            
            
            // Coffee Amount
            HStack {
                Text("Coffee Amount (g):")
                Spacer()
                Stepper(value: $coffeeAmount, in: 5...100, step: 1) {
                    Text("\(Int(coffeeAmount))")
                }
            }
            .padding()
            
            // Yield Amount
            HStack {
                Text("Yield Amount (ml):")
                Spacer()
                Stepper(value: $yieldAmount, in: 100...1000, step: 10) {
                    Text("\(Int(yieldAmount))")
                }
            }
            .padding()
            
            // Grind Size
            HStack {
                Text("Grind Size:")
                Spacer()
                Picker(selection: $grindSize, label: Text("Grind Size")) {
                    Text("Fine").tag("Fine")
                    Text("Medium").tag("Medium")
                    Text("Coarse").tag("Coarse")
                }
                .pickerStyle(SegmentedPickerStyle())
            }
            .padding()
            
            // Start Button
            Button(action: {
                // Start brewing coffee
            }) {
                Text("Start")
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(10)
                    .padding()
            }
        }
    }
}

struct ReceipeDetail_Previews: PreviewProvider {
    static var previews: some View {
        ReceipeDetail()
    }
}
