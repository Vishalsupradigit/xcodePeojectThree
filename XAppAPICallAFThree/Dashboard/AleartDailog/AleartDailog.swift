//
//  AleartDailog.swift
//  XAppAPICallAFThree
//
//  Created by Vishal Londhe on 23/12/24.




import SwiftUI

struct AleartDailog: View {
    @State private var showAlert = false
    @State private var navigateToScreen: Bool = false
    @State private var selectedRow: Int? = nil // Track the selected row
  
  

    var body: some View {
        NavigationView {
            ZStack(alignment: .topTrailing) {
               
                
                VStack {
                    
                    Button("Show Custom Alert ") {
                        showAlert = true
                    }
                    .padding()
                    .foregroundColor(.red)
                    .font(.title)
                    .background(Color.yellow)
                    .border(Color.black)

                    // NavigationLink to dynamically navigate
                    NavigationLink(
                        destination: destinationView(),
                        isActive: $navigateToScreen,
                        label: { EmptyView() }
                    )
                }

                
                if showAlert {
                    CustomAlertView(showAlert: $showAlert, navigateToScreen: $navigateToScreen, selectedRow: $selectedRow)
                        .transition(.move(edge: .trailing))
                        .zIndex(1)
                        .frame(width: 265, height: 600)  .offset(x: UIScreen.main.bounds.width / 7) // Position it to the right
                }
    
                
            }
        }
    }

    @ViewBuilder
    func destinationView() -> some View {
        if selectedRow == 1 {
            V1Screen()
        } else if selectedRow == 2 {
            V3Screen()
        } 
        else if selectedRow == 3 {
            V3Screen()
        }
        else if selectedRow == 4 {
            V3Screen()
        }
        else if selectedRow == 5 {
            V4Screen()
        }
        else {
            EmptyView() // Fallback
        }
    }
    
    
}

struct CustomAlertView: View {
    @Binding var showAlert: Bool
    @Binding var navigateToScreen: Bool
    @Binding var selectedRow: Int?
    @State private var showAlertSmall = false

    var body: some View {
        VStack(spacing: 0) {
            // First Row
            Button(action: {
                selectedRow = 1
                showAlert = false
                navigateToScreen = true
            }) {
                HStack {
                    Image(systemName: "folder.badge.minus")
                        .resizable()
                        .frame(width: 25, height: 25)
                        .foregroundColor(.gray)
                    Text("View Appointment Info.")
                        .font(.system(size: 15))
                        .foregroundColor(.gray)
                    Spacer()
                }
                .padding()
            }
            Divider()
                .padding(.leading, 50)  // Left padding
                .padding(.trailing, 20) // Right padding

            // Second Row
            Button(action: {
                selectedRow = 2
                showAlert = false
                navigateToScreen = true
            }) {
                HStack {
                    Image(systemName: "person.3")
                        .resizable()
                        .frame(width: 25, height: 25)
                        .foregroundColor(.gray)
                    Text("Edit Appointment")
                        .font(.system(size: 15))
                        .foregroundColor(.gray)
                    Spacer()
                }
                .padding()
            }
            Divider()
                .padding(.leading, 50)  // Left padding
                .padding(.trailing, 20) // Right padding
            
            
            
            
            // three Row
            Button(action: {
                selectedRow = 3
                showAlert = false
                navigateToScreen = true
            }) {
                HStack {
                    Image(systemName: "list.clipboard")
                        .resizable()
                        .frame(width: 25, height: 25)
                        .foregroundColor(.gray)
                    Text("Edit Patient")
                        .font(.system(size: 15))
                        .foregroundColor(.gray)
                    Spacer()
                }
                .padding()
            }
            Divider()
                .padding(.leading, 50)  // Left padding
                .padding(.trailing, 20) // Right padding
            
            
            
            
            // four Row
            Button(action: {
                selectedRow = 4
                showAlert = false
                navigateToScreen = true
            }) {
                HStack {
                    Image(systemName: "newspaper")
                        .resizable()
                        .frame(width: 25, height: 25)
                        .foregroundColor(.gray)
                    Text("View Patient Info.")
                        .font(.system(size: 15))
                        .foregroundColor(.gray)
                    Spacer()
                }
                .padding()
            }
            Divider()
                .padding(.leading, 50)  // Left padding
                .padding(.trailing, 20) // Right padding
            
            
            
            // Five Row
      

            Button(action: {
                selectedRow = 5
                showAlertSmall = true
            }) {
                HStack {
                    Image(systemName: "macbook.and.iphone")
                        .resizable()
                        .frame(width: 25, height: 25)
                        .foregroundColor(.gray)
                    Text("Cancel Appointment")
                        .font(.system(size: 15))
                        .foregroundColor(.gray)
                    Spacer()
                }
                .padding()
            }
            .alert("Cancel Appointment", isPresented: $showAlertSmall) {
                Button("No", role: .cancel) {
                    print("No tapped")
                    showAlertSmall = false
                }
                Button("Yes", role: .destructive) {
                    print("Yes tapped")
                    showAlertSmall = false
                }
            } message: {
                VStack {
                    Image(systemName: "newspaper")
                        .resizable()
                        .scaledToFit()  // Ensures the image maintains aspect ratio
                        .frame(width: 25, height: 25)
                        .foregroundColor(.gray)
                    Text("Please note, that you can not revert back the status of this appointment ever again! Are you sure?")
                        .multilineTextAlignment(.center)
                        .padding(.top, 10)
                    Spacer()  // Helps ensure the content doesn't get clipped
                }
                .padding()  // Add some padding around the VStack for better layout
            }


            
            
        }
        .background(Color.white)
        .cornerRadius(12)
        .shadow(radius: 8)
        .padding()
    }
}

// Destination Screen V1
struct V1Screen: View {
    var body: some View {
        VStack {
            Text("Welcome to V1 Screen")
                .font(.largeTitle)
                .padding()
            Spacer()
        }
        .navigationTitle("V1 Screen")
        .navigationBarTitleDisplayMode(.inline)
    }
}

// Destination Screen V3
struct V3Screen: View {
    var body: some View {
        VStack {
            Text("Welcome to V3 Screen")
                .font(.largeTitle)
                .padding()
            Spacer()
        }
        .navigationTitle("V3 Screen")
        .navigationBarTitleDisplayMode(.inline)
    }
}

// Destination Screen V3
struct V4Screen: View {
    
    @State private var showAlertSmall = false
    
    var body: some View {
           VStack {
               Button("Show Alert") {
                   showAlertSmall = true
               }
              
           }
           .padding()
       }
}

#Preview {
    AleartDailog()
}
