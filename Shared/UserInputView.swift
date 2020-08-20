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
    
    var body: some View {
        
        VStack(alignment: .leading) {
            Text("User input")
                
                .font(.title)
   // Form {
                
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
                .textFieldStyle(RoundedBorderTextFieldStyle())
       
   //}
           
        
                CountryPicker()
            
//                    Text("Your name is: \(userName)")
         
            Spacer()
          
            Text("Hello, \(userName). Your age is:")
     
        }
        .padding()
    }
}

struct UserInputView_Previews: PreviewProvider {
    static var previews: some View {
        UserInputView()
    }
}
