//
//  CoffeeDetail.swift
//  BrewTracker
//
//  Created by Nicholas Szeto on 17/12/21.
//

import SwiftUI
import MapKit

struct CoffeeDetail: View {
    
    @State var roaster = ""
    @State var countryOrigin = ""
    @State var weight = ""
    
    @State private var mapCoordinate =
    MKCoordinateRegion(center: CLLocationCoordinate2D(
                        latitude: 40.7608,
                        longitude: -111.8910),
                        span: MKCoordinateSpan(latitudeDelta: 0.3, longitudeDelta: 0.3))
    
    var body: some View {
        
        
        NavigationView {
            VStack (alignment: .leading){
                Image("BuenaVista")
                    .resizable()
                    .scaledToFit()
                    .padding(.horizontal)
                    .clipShape(Circle())
                    .offset(y: -60)
                    .shadow(radius: 10, y: 20)
                
                VStack (alignment:.leading) {
                    
                    Text("Nicaragua")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                               
                    Text("Santa Maria De Lourdes")
                        .font(.title)
                                
                    Text("Sultanas, Dried Peach, Pine Nuts")
                        .font(.subheadline)
                    
                }
                                
                Divider()
                
                VStack (alignment: .leading){
                   
                    Text("Nylon Coffee Roaster")
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
                .font(.body)
                
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
