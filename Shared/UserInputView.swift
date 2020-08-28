//
//  UserInputView.swift
//  Memento mori (iOS)
//
//  Created by lars on 13/08/2020.
//

import SwiftUI


struct UserInputView: View {
    @State private var userName = ""
    @State private var birthDay = Date()
    @State private var selectedCountry = -1
    
    var countries = Country.countryNamesByCode()
    
    // MARK: - The rows displaying the countries
    private func pickerRow(_ country:Country) -> some View {
        return HStack {
            country.flag?
                .resizable()
                .frame(maxWidth: 40, maxHeight: 30, alignment: .center)
                .cornerRadius(0.0)
            
            Text(country.name ?? "")
        }.padding(5)
    }
    
    
    var body: some View {
        #if os(iOS)
        NavigationView{
            Form {
                Section {
                    DatePicker(selection: $birthDay, displayedComponents: .date, label: {
                                Text("Date of birth") })
                        .frame(maxWidth: .infinity, minHeight:0, maxHeight: 40)
                    
                    HStack {
                        Text("Name:")
                        
                        TextField("Enter name...", text: $userName, onEditingChanged: { (changed) in
                            print("Username onEditingChanged - \(changed)")
                        }) {
                            print("Username onCommit")
                        }
                    }
                }
                
                // MARK: - Country picker
                Section {
                    Picker("", selection: $selectedCountry) {
                        ForEach(0 ..< countries.count) {
                            pickerRow(countries[$0])
                        }
                    }
                    
                }
            }
            .navigationBarTitle(Text("User details"), displayMode: .inline )
        }
        #endif
    }
}

struct UserInputView_Previews: PreviewProvider {
    static var previews: some View {
        UserInputView()
    }
}
