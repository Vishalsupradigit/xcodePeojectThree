//
//  LoginScreen.swift
//  XAppAPICallAFThree
//
//  Created by Vishal Londhe on 26/11/24.
//

import SwiftUI

struct LoginScreen : View {
    
    @State private var username = ""
    @State private var password = ""
    @State private var wrongUsername = 0
    @State private var wrongPassword = 0
    @State private var showingLoginScreen = false
    @State private var showingRegistration = false
    
    var body: some View {
        NavigationView{
            ZStack{
                Color.blue
                    .ignoresSafeArea()
                Circle()
                    .scale(1.7)
                    .foregroundColor(.white.opacity(0.15))
                Circle()
                    .scale(1.35)
                    .foregroundColor(.white)
                
                VStack{
                    Text("Login")
                        .font(.largeTitle)
                        .bold()
                        .padding()
                    
                    TextField("userName",text: $username)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongUsername))
                    
                    SecureField("password",text: $password)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongPassword))
                    
                    Button("Login")
                    {
                        // authunticate user
                        AuthUser(userName: username, password: password)
                    }
                    .foregroundColor(.white)
                    .frame(width: 300, height: 50)
                    .background(Color.blue)
                    .cornerRadius(10)
                    
//                    NavigationLink(destination: Text("You are login @\(username)"),
//                                   
//                    isActive: $showingLoginScreen)
//                    {
//                        EmptyView()
//                    }
                    
                    NavigationLink(destination: MainDashboardScreen(),
                                   
                    isActive: $showingLoginScreen)
                    {
                        EmptyView()
                    }
                   
                 
                    NavigationLink(destination: RegistrationScreen()) {

                        Button("Registration")
                        {
                            
                        }
                        .foregroundColor(.white)
                        .frame(width: 300, height: 50)
                        .background(Color.gray)
                        .cornerRadius(10)
                        .padding()
                    }

                    
                }
            }
            .navigationBarHidden(true)
        }
    }
    
    
    func AuthUser(userName : String, password : String)
    {
        if userName.lowercased()  == "123"
        {
            wrongUsername = 0
            if password.lowercased() == "123"
            {
                wrongPassword = 0
                showingLoginScreen = true
            }
            else
            {
                wrongPassword = 2
            }
        }
        else
        {
            wrongUsername = 2
        }
    }
    
    
}






#Preview {
    LoginScreen()
}
