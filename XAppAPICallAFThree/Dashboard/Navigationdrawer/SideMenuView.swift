//
//  SideMenuView.swift
//  XAppAPICallAFThree
//
//  Created by Vishal Londhe on 05/02/25.
//




import SwiftUI
 
struct SideMenuView: View {
    @Binding var isShowing: Bool // Tracks the drawer state
    @Binding var selectedMenu: MenuType? // Tracks the selected menu
 
    var body: some View {
        
        ZStack{
            
            
            HStack{
                
                VStack(alignment: .leading) {
                    
                    

                    
                    
                    Divider()
                    
                    // Menu Items
                    VStack(alignment: .leading, spacing: 16) {
                        MenuOption(title: "Patients", icon: "person.3", menuType: .patients)
                            .padding(.leading)
                        Divider()
                        MenuOption(title: "Appointments", icon: "calendar", menuType: .appointments)
                            .padding(.leading)
                        Divider()
                        MenuOption(title: "Users", icon: "person.2", menuType: .users)
                            .padding(.leading)
                        Divider()
                        MenuOption(title: "Settings", icon: "gearshape", menuType: .settings)
                            .padding(.leading)
                        Divider()
                    }
                    
                    
                    Spacer()
                    
                    // Footer
                    VStack(alignment: .leading, spacing: 16) {
                        Divider()
                        MenuOption(title: "Logout", icon: "globe", menuType: .logout)
                            .padding(.leading)
                        
//                        FooterOption(title: "My Profile", icon: "person")
//                        FooterOption(title: "FAQs", icon: "questionmark.circle")
//                        FooterOption(title: "Logout", icon: "arrow.right")
                    }
                   
                    
                    
                }
                .frame(width: 270)
                .background(Color.white)
                .shadow(color: .gray.opacity(0.9), radius: 100, x: 100, y: 0)
                .offset(x: isShowing ? 0 : -300) // Slide from the left
                .animation(.easeInOut, value: isShowing)
                
                
                
                Spacer()
                
                
                
            }
 
            
        }
        
       
        
    }
    
 
    // Helper for Menu Items
//    private func MenuOption(title: String, icon: String, menuType: MenuType? = nil) -> some View {
//        Button(action: {
//            if let menuType = menuType {
//                selectedMenu = menuType // Update selected menu
//            }
//            withAnimation {
//                isShowing = false // Close the menu
//            }
//        }) {
//            HStack {
//                Image(systemName: icon)
//                    .foregroundColor(.blue)
//                    .frame(width: 24, height: 24)
//                Text(title)
//                    .font(.body)
//                    .foregroundColor(.black)
//            }
//            .padding(.vertical, 8)
//        }
//    }
    
    private func MenuOption(title: String, icon: String, menuType: MenuType? = nil) -> some View {
        Button(action: {
            if let menuType = menuType {
                selectedMenu = menuType // Update selected menu
            }
            withAnimation {
                isShowing = false // Close the menu
            }
        }) {
            HStack {
                Image(systemName: icon)
                    .foregroundColor(.blue)
                    .frame(width: 24, height: 24)
                Text(title)
                    .font(.body)
                    .foregroundColor(.black)
                Spacer() // Add Spacer to make the tappable area expand
            }
            .frame(maxWidth: .infinity) // Ensure the button fills the available width
            .padding(.vertical, 12) // Increase the tappable vertical area
            .contentShape(Rectangle()) // Ensure the entire frame is tappable
        }
        .buttonStyle(PlainButtonStyle()) // Remove default button styling
    }
 
    
    
 
    // Footer Options
    private func FooterOption(title: String, icon: String) -> some View {
        Button(action: {
            // Handle footer button actions here
        }) {
            VStack {
                Image(systemName: icon)
                    .foregroundColor(.gray)
                Text(title)
                    .font(.caption)
                    .foregroundColor(.gray)
            }
        }
    }
    
    
    
}
 
#Preview {
    SideMenuView(isShowing: .constant(true), selectedMenu: .constant(.patients))
}
