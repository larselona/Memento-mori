//
//  CountryPicker.swift
//  JDA Country Picker
//
//  Created by Jeevan on 04/07/20.
//  Copyright © 2020 JDA. All rights reserved.
//  https://github.com/byJeevan/JDAWidgets_SwiftUI

import SwiftUI

struct CountryPicker: View {
    
    @State var isPickerSelected = false
    @State private var selectedCountry = -1
    @State private var selectedCountryValue:Country? = nil
    
    var countries = Country.countryNamesByCode()
    
    // MARK: - THE "DISPLAY COUNTRY OR PICK A COUNTRY" BUTTON
    private func pickerFieldButton() -> some View {
        return  Button(action: {
            self.isPickerSelected = !self.isPickerSelected
        }) {
            if selectedCountryValue == nil {
                Text("Select Country")
                    //                    .font(.headline)
                    //                   .background(Color.white)
                    //                    .foregroundColor(Color.gray)
                    .frame(minWidth: 100, maxWidth: .infinity, minHeight:50)
            }
            else{
                HStack {
                    selectedCountryValue?.flag?
                        .renderingMode(.original)
                        .resizable()
                        .frame(maxWidth: 40, maxHeight: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .cornerRadius(0.0)
                    Text(selectedCountryValue?.name ?? "Select from the list")
                    // .font(.headline)
                }.frame(minWidth: 100, maxWidth: .infinity, minHeight: 50).padding(15)
            }
        }
        
        // MARK: - The formatting of the above button
        .background( RoundedRectangle(cornerRadius: 15)
                        .foregroundColor(Color.white)
                        .shadow(color: Color.gray.opacity(0.35), radius: 1, x: 0, y: 0)
        )
    }
    
    // MARK: - The SAVE button
    private func pickerFooterButton() -> some  View {
        return HStack {
            Button(action: {
                isPickerSelected = !isPickerSelected
                selectedCountryValue = countries[selectedCountry]
            }) {
                HStack {
                    Text("Save")
                        .padding(EdgeInsets.init(top: 5, leading: 10, bottom: 5, trailing: 10))
                        .foregroundColor(.white)
                        .background(Color.green)
                        .font(Font.subheadline)
                        .cornerRadius(5.0)
                }
            }
            .padding(15)
        }
    }
    // MARK: - The rows displaying the countries
    private func pickerRow(_ country:Country) -> some View {
        return HStack {
            country.flag?
                .resizable()
                .frame(maxWidth: 40, maxHeight: 30, alignment: .center)
                .cornerRadius(0.0)
            
            Text(country.name ?? "")
            //Spacer()
            // Text("(\(country.phoneCode ?? ""))")
        }.padding(5)
    }
    
    // MARK: - The picker view. conforms to view
    private func pickerView() -> some View {
        return
            // this was the solution; wrapping the picker in a NavigationView and a Form
            NavigationView{
                Form{
                    
                    Picker("", selection: $selectedCountry) {
                        ForEach(0 ..< countries.count) {
                            pickerRow(countries[$0])
                        }
                    }
                    
                    // .pickerStyle(MenuPickerStyle())
                    .labelsHidden()
                    
                }
            }
    }
    var body: some View {
        
        VStack {
            pickerFieldButton()
            
            if isPickerSelected == true {
                VStack{
                    pickerView()
                    // .padding([.leading, .trailing], 20)
                    
                    pickerFooterButton()
                    //.padding([.leading, .trailing], 20)
                    
                }   .background( RoundedRectangle(cornerRadius: 5)
                                    .foregroundColor(Color.white)
                                    .shadow( color: Color.gray.opacity(0.35), radius: 1, x: 0, y: 0))
            }
        }
    }
}

struct CountryPicker_Previews: PreviewProvider {
    static var previews: some View {
        CountryPicker()
    }
}



