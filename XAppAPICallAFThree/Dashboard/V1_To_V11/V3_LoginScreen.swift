//
//  V3_LoginScreen.swift
//  XAppAPICallAFThree
//
//  Created by Vishal Londhe on 02/12/24.
//

import SwiftUI

struct V3_LoginScreen: View {
    
    
    @State var username : String = ""
    @State var password : String = ""
    
    
    var body: some View {
        ZStack{
            Color.orange
                .ignoresSafeArea(.all)
            VStack{
            
                Text("Login")
                    .font(.title)
                
                TextField("UserName", text: $username)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                SecureField("Pasword", text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Button(action:{
                    if self.username == "123" && self.password == "123"
                    {
                        print("Login  Success")
                    }
                    else
                    {
                        print("Login Failed")
                    }
                }){
                    Text("Login")
                        .font(.body)
                }
                .padding(.all)
                .frame(width: 200, height: 50)
                .background(Color.black)
                .foregroundColor(.orange)
                
                
            }
            .padding(.all)
            
        }
    }
}

#Preview {
    V3_LoginScreen()
}
