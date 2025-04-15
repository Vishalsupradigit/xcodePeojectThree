//
//  ContentView.swift
//  XAppAPICallAFThree
//
//  Created by Vishal Londhe on 26/11/24.
//

import SwiftUI
import CoreData

struct SplashScreen: View {
    var body: some View {
        NavigationView(content: {
            NavigationLink(destination: LoginScreen())
            {
                ZStack
                {
                    Color(.systemMint)
                        .ignoresSafeArea()
                    
                    VStack(alignment: .leading, spacing: 20.0){
                        Image("skoda")
                               .resizable()
                               .aspectRatio(contentMode: .fit)
                               .cornerRadius(15)
                        
                        HStack {
                          
                             Text("skoda")
                                .font(.title)
                                .fontWeight(.bold)
                            
                            Spacer()
                            VStack{
                                HStack{
                                    Image(systemName: "star.fill")
                                    Image(systemName: "star.fill")
                                    Image(systemName: "star.fill")
                                    Image(systemName: "star.fill")
                                    Image(systemName: "star.leadinghalf.filled")
                                }
                                Text("(Review 361)")
                            }
                            .foregroundColor(.orange)
                            .font(.caption)
                          
                        }
                       
                       
                        Text("This is a new VW Car you can say this Zephyr its looking good")
                            .font(.subheadline)
                        
//                        Text("Tap to Next Screen")
//                            .font(.subheadline)
//                            .foregroundColor(.red)
                        
                        VStack {
                            Text("Tap to Next Screen")
                                .font(.subheadline)
                                .foregroundColor(.red)
                          
                        }
                        .frame(maxWidth: 400, maxHeight: 10)

                         
                            
                        
                        HStack{
                            Spacer()
                            Image(systemName: "binoculars.circle.fill")
                            Image(systemName: "fork.knife")
                        }
                        .foregroundColor(.gray)
                        .font(.caption)
                    }
                    .padding()
                    .background(
                        Rectangle()
                            .foregroundColor(.white)
                            .cornerRadius(15)
                            .shadow(radius: 15))
                            .padding()
                }
            }
        })
        
    }
}

#Preview {
    SplashScreen()
}
