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
    // the initial value has been set to Norways number in the array
    @State private var selectedCountry = 162
    
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
                Section(header: Text("Name and birthday")) {
                    HStack {
                        Text("Name:")
                        
                        TextField("Enter name...", text: $userName, onEditingChanged: { (changed) in
                            print("Username onEditingChanged - \(changed)")
                        }) {
                            print("Username onCommit")
                        }
                    }
                    
                    DatePicker(selection: $birthDay, displayedComponents: .date, label: {
                                Text("Date of birth:") })
                        .frame(maxWidth: .infinity, minHeight:30, maxHeight: 40)
                }
                
                // MARK: - Country picker
                Section(header: Text("Country of origin")) {
                    Picker("", selection: $selectedCountry) {
                        ForEach(0 ..< countries.count) {
                            pickerRow(countries[$0])
                        }
                    }
                }
                Text("Your name is: \(userName), \n You were born \(birthDay), \n and you are from \(selectedCountry)")
                    .font(.footnote)
                    .lineLimit(/*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
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
