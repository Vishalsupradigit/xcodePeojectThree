//
//  V10_CheckBox.swift
//  XAppAPICallAFThree
//
//  Created by Vishal Londhe on 02/12/24.
//

//import SwiftUI
//
//struct V10_CheckBox: View {
//    var body: some View {
//        Text(" Check Box ")
//    }
//}
//
//#Preview {
//    V10_CheckBox()
//}


import SwiftUI

struct V10_CheckBox: View {
    @State private var isChecked = false // State variable to track the checkbox status
    
    var body: some View {
        VStack {
            // Custom Checkbox with Label
            HStack {
                Button(action: {
                    isChecked.toggle() // Toggle the checkbox state
                }) {
                    Image(systemName: isChecked ? "checkmark.square.fill" : "square")
                        .foregroundColor(isChecked ? .blue : .gray)
                        .font(.system(size: 24))
                }
                
                Text("I agree to the terms and conditions")
                    .font(.body)
            }
            .padding()
            
            // Display the status
            Text("Checkbox is \(isChecked ? "checked" : "unchecked")")
                .font(.headline)
                .padding(.top, 20)
        }
        .padding()
    }
}

struct V10_CheckBox_Previews: PreviewProvider {
    static var previews: some View {
        V10_CheckBox()
    }
}
