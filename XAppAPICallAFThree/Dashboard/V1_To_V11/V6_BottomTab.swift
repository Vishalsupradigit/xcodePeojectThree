//
//  V6_BottomTab.swift
//  XAppAPICallAFThree
//
//  Created by Vishal Londhe on 02/12/24.
//

import SwiftUI

struct V6_BottomTab: View {
    var body: some View {
       
        TabView{
            
            HomeView()
                .tabItem {
                    Label("Profile", systemImage: "person.fill")
                }
            
            ProfileView()
                .tabItem {
                    Label("Tv", systemImage: "tv.fill")
                }
            
            
        }
        
    }
}

struct HomeView : View {
    var body: some View {
        ZStack{
            Color.pink
            VStack{
                Text("Home This Is Home Page home page is second content ")
                    .foregroundColor(.white)
                    .font(.title)
            }
        }
     
    }
}


struct ProfileView : View {
    var body: some View {
        ZStack{
            Color.mint
            VStack{
                Text("Home This Is Profile Page")
                    .foregroundColor(.white)
                    .font(.title)
            }
        }
    }
}


#Preview {
    V6_BottomTab()
}
