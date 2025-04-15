//
//  SwipeRightScreen.swift
//  XAppAPICallAFThree
//
//  Created by Vishal Londhe on 20/02/25.
//

//import SwiftUI
//
//struct SwipeRightScreen: View {
//    var body: some View {
//        Text("Swipe Write Scrreen")
//    }
//}
//
//#Preview {
//    SwipeRightScreen()
//}


import SwiftUI

struct SwipeRightScreen: View {
    var body: some View {
        
        
       
            
            TabView {
                // First VStack
                VStack {
                    
                    Text("One")
                    
                }
               .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.blue)
                .ignoresSafeArea()
                
                // Second VStack
                VStack {
                    
                    Text("Two")
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.green)
                .ignoresSafeArea()
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            
    
        
        
        
    }
}

struct SwipeRightScreen_Previews: PreviewProvider {
    static var previews: some View {
        SwipeRightScreen()
    }
}
