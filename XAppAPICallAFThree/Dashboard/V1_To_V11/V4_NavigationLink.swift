//
//  V4_NavigationLink.swift
//  XAppAPICallAFThree
//
//  Created by Vishal Londhe on 02/12/24.
//

import SwiftUI

struct V4_NavigationLink: View {
    var body: some View {
        NavigationView{
            
            VStack{
              
                Spacer()
                
                NavigationLink(
                    destination: V3_LoginScreen())
                {
                    Text("First Screen - click me")
                        .frame(width: 250,height: 100)
                        .background(Color.red)
                        .foregroundColor(.white)
                    
                }
                
                
                Spacer()
                
                
                NavigationLink(
                    destination: V3_LoginScreen())
                {
                    Text("First Screen - click me two screen")
                        .frame(width: 250,height: 100)
                        .background(Color.blue)
                        .foregroundColor(.white)
                    
                }
                
                Spacer()
                
                
            }
            
            
            
            
        }
    }
}

#Preview {
    V4_NavigationLink()
}
