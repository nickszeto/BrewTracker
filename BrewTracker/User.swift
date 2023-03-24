//
//  User.swift
//  BrewTracker
//
//  Created by Nicholas Szeto on 22/3/23.
//

import SwiftUI


    struct User: View {
        @State var firstName = "User"
        @State var lastName = "lastName"
        @State var nameHandler = "barista"

        var body: some View {
            NavigationStack {
                VStack (alignment: .leading) {
                    
                    HStack (spacing: 100) {
                        //Profile Picture
                        Image(systemName: "person.circle")
                            .resizable()
                            .scaledToFit()
                            .padding(.horizontal)
                            .frame(width: 80, height: 80)
                        
                        VStack (alignment:.leading){
                            HStack{
                                Text("\(firstName)")
                                Text("\(lastName)")
                                    
                            }
                            .font(.title)
                            Text("@\(nameHandler)")
                                .font(.subheadline)
                                .foregroundColor(.brown)
                        }
                    }
                    
                    Form {
                        Section {
                            Label ("Espresso Machine",systemImage: "cup.and.saucer")
                            Label ("Grinder", systemImage: "cup.and.saucer")
                        } header: {
                            Text("My Machines")
                        }
                        
                        Section {
                            Label ("Coffee Profile",systemImage: "heart")
                            Label ("Roasters", systemImage: "cup.and.saucer")
                        } header: {
                            Text("Taste Profile")
                        }
                        
                        Section {
                            Label ("Help", systemImage: "questionmark.circle.fill")
                            Label ("Contact us", systemImage: "phone")
                        } header: {
                            Text("About")
                        }
                    }
                }
                .navigationTitle("Barista Profile")
                .toolbar {
                    ToolbarItem {
                        Button (action: {} ) {
                            Text("Edit")
                        }
                    }
                }
            }
        }
    }



struct User_Previews: PreviewProvider {
    static var previews: some View {
        User()
    }
}
