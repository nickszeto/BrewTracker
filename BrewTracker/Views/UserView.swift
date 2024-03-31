//
//  User.swift
//  BrewTracker
//
//  Created by Nicholas Szeto on 22/3/23.
//

import SwiftUI
    struct UserView: View {
        @State var firstName = "User"
        @State var lastName = "lastName"
        @State var nameHandler = "barista"

        var body: some View {
            NavigationStack {
                VStack (alignment: .leading) {
                    
                    HStack {
                        //Profile Picture
                        Image(systemName: "person.circle.fill")
                            .resizable()
                            .scaledToFit()
                            .padding(.horizontal)
                            .frame(width: 80, height: 80)
                            .foregroundColor(.brown)
                        
                        VStack (alignment:.leading){
                            
                            Text("\(firstName)")
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
                            Label ("Taste Profile",systemImage: "heart")
                            Label ("Roasters", systemImage: "cup.and.saucer")
                        } header: {
                            Text("Coffee Profile")
                        }
                        
                        Section {
                            Label ("Help", systemImage: "questionmark.circle.fill")
                            Label ("Contact us", systemImage: "phone")
                        } header: {
                            Text("About")
                        }
                    }
                }
                .navigationTitle("Profile")
                .navigationBarTitleDisplayMode(.automatic)
                
                .toolbar {
                    ToolbarItem (placement: .navigationBarTrailing) {
                        Button (action: {} ) {
                            Text("Edit")
                        }
                    }
                    

                }
            }
        }
    }



struct UserView_Previews: PreviewProvider {
    static var previews: some View {
        UserView()
    }
}
