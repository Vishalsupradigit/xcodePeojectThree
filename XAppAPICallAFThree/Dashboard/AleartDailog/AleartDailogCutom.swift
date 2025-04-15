//
//  AleartDailogCutom.swift
//  XAppAPICallAFThree
//
//  Created by Vishal Londhe on 13/01/25.




import SwiftUI

struct AleartDailogCutom: View {
    @State private var showDialogAppoitment = false

    
    var body: some View {
        ZStack {
            // Main content
            VStack {
                Text("Custom Alert Dialog Example")
                    .font(.title)
                    .padding()
                
                Button(action: {
                    showDialogAppoitment = true
                }) {
                    Text("Show Alert Dialog")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
            }
            
            // Custom alert dialog Appoitment slot
            if showDialogAppoitment {
                ZStack {
                    // Dimmed background
                    Color.black.opacity(0.5)
                        .edgesIgnoringSafeArea(.all)
                    
                    // Alert content
                    VStack(spacing: 20) {
                        HStack {
                            Spacer()
                            
                            Button(action: {
                                showDialogAppoitment = false
                            }) {
                                Image(systemName: "xmark")
                                    .resizable()
                                    .frame(width: 20, height: 20)
                                    .foregroundColor(.red)
                                    .padding()
                            }
                        }
                        
                        VStack{
                            Text("Make change here")
                        }
                        .padding()
                        
                    
                    }
                    .background(Color.white)
                    .cornerRadius(20)
                    .shadow(radius: 10)
                    .frame(maxWidth: 350, maxHeight: 700)
                    .clipped()
                }
                .transition(.opacity)
                .animation(.easeInOut)
            }
            
            
        }
    }
    
  
}

#Preview {
    AleartDailogCutom()
}
