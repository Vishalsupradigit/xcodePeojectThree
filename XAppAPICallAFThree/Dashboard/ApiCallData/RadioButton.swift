//
//  RadioButton.swift
//  XAppAPICallAFThree
//
//  Created by Vishal Londhe on 31/01/25.
//


import SwiftUI

struct SegmentedButtonView: View {
    
    
    @State private var selectedOption = "All"
    
    var body: some View {
        
        
        HStack(spacing: 0) {
            
            Button(action: { selectedOption = "Recent" }) {
                HStack {
                   // Image(systemName: "camera") // Camera icon for "Photo"
                    Text("Recent")
                }
                .font(.body)
                .frame(maxWidth: .infinity, minHeight: 40)
                .foregroundColor(selectedOption == "Recent" ? .white : .black)
                .background(selectedOption == "Recent" ? Color.blue : Color.clear)
                .clipShape(Capsule())
            }
            
            Button(action: { selectedOption = "All" }) {
                HStack {
                  //  Image(systemName: "keyboard") // Keyboard icon for "Type"
                    Text("All")
                }
                .font(.body)
                .frame(maxWidth: .infinity, minHeight: 40)
                .foregroundColor(selectedOption == "All" ? .white : .black)
                .background(selectedOption == "All" ? Color.blue : Color.clear)
                .clipShape(Capsule())
            }
            
         
        }
        .padding(3)
        .background(RoundedRectangle(cornerRadius: 20).fill(Color.gray.opacity(0.2))) // Background color
        .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.clear, lineWidth: 1)) // Transparent border
        .padding()
        
        
        
        
    }
    
    
    
    
}

// MARK: - Preview
struct SegmentedButtonView_Previews: PreviewProvider {
    static var previews: some View {
        SegmentedButtonView()
    }
}
