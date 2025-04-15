//
//  RegistrationScreen.swift
//  XAppAPICallAFThree
//
//  Created by Vishal Londhe on 26/11/24.
//

import SwiftUI

struct RegistrationScreen: View {
    
    @State private var fullname = ""
    @State private var email = ""
    @State private var mobileno = ""
    @State private var password = ""
    
    @State private var showToast = false
    
    var body: some View {
        NavigationView{
            ZStack{
                Color.pink
                VStack{
                    
                    Text("Registration Window")
                        .font(.title)
                        .bold()
                        .padding()
                        .foregroundColor(.white)
                    
                    HStack{
                        
                        Spacer()
                        Text("Link one")
                            .font(.subheadline)
                            .bold()
                            .foregroundColor(.white)
                            .underline()
                        
                        //  start
                            .onTapGesture {
                                // Show toast when tapped
                                showToast = true
                                // Hide toast after 2 seconds
                                DispatchQueue.main.asyncAfter(deadline: .now() + 2)
                                {
                                    showToast = false
                                }
                            }
                        
                        // Conditionally showing the Toast message
                        if showToast {
                            ToastView(message: "Link is one")
                        }
                        //  End
                        
                        
                        
                        
                        
                        Spacer()
                        Spacer()
                        
                        Text("Link Two")
                            .font(.subheadline)
                            .bold()
                            .foregroundColor(.white)
                            .underline()
            
                        Spacer()
                    }
                    
                    VStack{
                        Text("Enter Personal Info")
                            .font(.caption2)
                            .bold()
                            .foregroundColor(.white)
                            .padding()
                            .border(Color.white)
                            .cornerRadius(10)
                    }
                    .padding()
                    
                    VStack{
                        TextField("Full Name", text: $fullname)
                            .padding()
                            .bold()
                            .frame(width: 250, height: 50)
                            .background(Color.black.opacity(0.05))
                            .cornerRadius(10)
                            .foregroundColor(.white)
                        
                        TextField("Email", text: $email)
                            .padding()
                            .bold()
                            .frame(width: 250, height: 50)
                            .background(Color.black.opacity(0.05))
                            .cornerRadius(10)
                            .foregroundColor(.white)
                        
                        TextField("Mobile No", text: $mobileno)
                            .padding()
                            .bold()
                            .frame(width: 250, height: 50)
                            .background(Color.black.opacity(0.05))
                            .cornerRadius(10)
                            .foregroundColor(.white)
                        
                        
                        SecureField("Password", text: $password)
                            .padding()
                            .bold()
                            .frame(width: 250, height: 50)
                            .background(Color.black.opacity(0.05))
                            .cornerRadius(10)
                            .foregroundColor(.white)
                        
                
                        NavigationLink(destination: LoginScreen())
                        {
                            Button("Registration")
                            {
                                
                            }
                            .foregroundColor(.white)
                            .frame(width: 250,height: 50)
                            .background(Color.blue)
                            .bold()
                            .cornerRadius(10)
                            .padding()
                        }
                    }
                    
                    
                }
                .padding()
            }
            .navigationBarHidden(true)
        }
    }
}

struct ToastView: View {
    let message: String

    var body: some View {
        Text(message)
            .font(.body)
            .foregroundColor(.white)
            .padding()
            .background(Color.black.opacity(0.7))
            .cornerRadius(10)
            .padding(.bottom, 50)
            .transition(.slide)
            .animation(.easeInOut)
    }
}


func FunctionOneCall ()
{
  
}

#Preview {
    RegistrationScreen()
}
