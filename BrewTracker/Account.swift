//
//  Account.swift
//  BrewTracker
//
//  Created by Nicholas Szeto on 23/2/22.
//

import SwiftUI

struct Account: View {
    
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var birthDate = Date()
    @State private var shouldSendNewsletter = false
    @State private var numberOfLikes = 1
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Personal Details")) {
                    TextField("First Name", text: $firstName)
                    TextField("Last Name", text: $lastName)
                    DatePicker("Birthdate", selection: $birthDate, displayedComponents: .date)
                }
                Section (header: Text("Actions")){
                    Toggle ("Send Newsletter", isOn: $shouldSendNewsletter)
                        .toggleStyle(SwitchToggleStyle(tint:.blue))
                    Stepper("Number of Likes: ",value: $numberOfLikes, in: 1...100)
                    Text("This video has: \(numberOfLikes) likes")
                    Link("Terms of Services", destination:URL(string:"www.google.com.sg")!)
                }
            }
            .navigationTitle("Account")
            .toolbar {
                ToolbarItemGroup (placement:.navigationBarTrailing) {
                    Button("Save", action: saveUser)
                    
                }
            }
        }
    }
    
    func saveUser() {
        print("User Saved")
    }
}

struct Account_Previews: PreviewProvider {
    static var previews: some View {
        Account()
    }
}
