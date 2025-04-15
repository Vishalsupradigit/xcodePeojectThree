//
//  NavigationDrawer.swift
//  XAppAPICallAFThree
//
//  Created by Vishal Londhe on 05/02/25.
//



import SwiftUI
 
struct NavigationDrawer: View {
    @State private var showMenu = false // Tracks the drawer's state
    @State private var selectedMenu: MenuType? = nil // Tracks the selected menu
    @State private var navigateToDashboard = false // Tracks if the bell icon is pressed
 
    var body: some View {
        NavigationStack {
            ZStack {
                // Main Content based on the selected menu
                Group {
                    if let menu = selectedMenu {
                        switch menu {
                        case .patients:
                            Text("Dashboard")
                        case .appointments:
                            Text("Appointment")
                        case .users:
                            Text("Users Screen")
                                .font(.largeTitle)
                        case .settings:
                            Text("Settings Screen")
                                .font(.largeTitle)
                        case .logout:
                            Text("Logout Screen")
                                .font(.largeTitle)
                        }
                    } else {
                        Text("Main Dashboard")
                    }
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.white) // Main screen background
                .disabled(showMenu) // Disable interaction when the menu is open
 
                // Side Menu
                if showMenu {
                    SideMenuView(isShowing: $showMenu, selectedMenu: $selectedMenu)
                        .transition(.move(edge: .leading)) // Slide-in animation
                        .zIndex(1) // Place above the main content
                }
            }
            .toolbarBackground(Color.blue, for: .navigationBar)
            .toolbarBackground(.visible, for: .navigationBar)
            .toolbar {
                // Change toolbar icon dynamically
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                        withAnimation {
                            showMenu.toggle()
                        }
                    }) {
                        Image(systemName: showMenu ? "xmark" : "line.3.horizontal")
                            .foregroundColor(.white)
                            .imageScale(.large)
                        
                            .font(.system(size: 22)) // Adjust the size here
                            .frame(width: 28, height: 28)
                        
                        VStack(alignment: .leading) {
                            Text("Dashboard")
                                .foregroundColor(.white)
                                .font(.headline)
                            
                            Text(selectedMenu?.title ?? "Patients")
                                .foregroundColor(.white)
                                .font(.subheadline)
                            
                            Spacer()
                        }
                        .padding(.all)
                    }
                }
 
                ToolbarItem(placement: .navigationBarTrailing) {
                    HStack {
                        // Bell icon
                        Button(action: {
                            navigateToDashboard = true // Set navigation trigger
                        }) {
                            Image(systemName: "bell")
                                .foregroundColor(.white)
                                .overlay(
                                    Text("1")
                                        .font(.subheadline)
                                        .foregroundColor(.white)
                                        .frame(width: 10, height: 10)
                                        .offset(x: 8, y: -8),
                                    alignment: .topTrailing
                                )
                        }
                    }
                }
            }
            .navigationDestination(isPresented: $navigateToDashboard) {
                Text("Notification") // Navigate to the Dashboard screen
            }
        }
    }
}
 
// Menu Types for navigation
enum MenuType {
    case patients
    case appointments
    case users
    case settings
    case logout
 
    var title: String {
        switch self {
        case .patients: return "Patients"
        case .appointments: return "Appointments"
        case .users: return "Users"
        case .settings: return "Settings"
        case .logout: return "Logout"
        }
    }
}
 
 
 
 
 
// Preview
#Preview {
    NavigationDrawer()
}
 
