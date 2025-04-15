//
//  TwoButtonToggle.swift
//  XAppAPICallAFThree
//
//  Created by Vishal Londhe on 06/02/25.
//

import SwiftUI

struct TwoButtonToggle: View {
    
    @State private var selectedOption = "Photo"
    
 
    
    var body: some View {
        VStack{
            //  Horizontal toggle Button for Recent and all
               VStack{
                   HStack(spacing: 0) {
                       
                       Button(action: { selectedOption = "Type" }) 
                       {
                           HStack {
                               Image(systemName: "keyboard")
                               Text("Type")
                           }
                           .font(.body)
                           .frame(maxWidth: .infinity, minHeight: 40)
                           .foregroundColor(selectedOption == "Type" ? .white : .black)
                           .background(selectedOption == "Type" ? Color.blue : Color.clear)
                           .clipShape(Capsule())
                       }
                       
                       Button(action: { selectedOption = "Photo" }) 
                       {
                           HStack {
                               Image(systemName: "camera")
                               Text("Photo(1)")
                           }
                           .font(.body)
                           .frame(maxWidth: .infinity, minHeight: 40)
                           .foregroundColor(selectedOption == "Photo" ? .white : .black)
                           .background(selectedOption == "Photo" ? Color.blue : Color.clear)
                           .clipShape(Capsule())
                       }
                       
                    
                   }
                   .padding(5)
                   .background(RoundedRectangle(cornerRadius: 20).fill(Color.gray.opacity(0.2))) // Background color
                   .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.clear, lineWidth: 1)) // Transparent border
                   .padding(.horizontal)
               }
            
            if (selectedOption == "Type")
            {
                VStack{
                    Text("text Area Type Side")
                        .frame(height: 200)
                        .padding()
                }
                .background(.yellow)
            }
            
            if (selectedOption == "Photo")
            {
                VStack{
                    Text("Photo Photo Photo")
                        .frame(height: 200)
                        .padding()
             
                }
                .background(.green)
            }
        }
    }
}

#Preview {
    TwoButtonToggle()
}
