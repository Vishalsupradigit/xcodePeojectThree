//
//  ToolBar.swift
//  XAppAPICallAFThree
//
//  Created by Vishal Londhe on 28/11/24.
//

import SwiftUI

struct ToolBarScreen: View {
    @Environment(\.presentationMode) var presentationMode // For handling back button manually

    var body: some View {
        ZStack {
            Color.red
                .ignoresSafeArea()

            VStack {
                VStack {
                    Text("Making Tool Bar")
                }
                Spacer()
            }
        }
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button(action: {
                    presentationMode.wrappedValue.dismiss() // Dismiss the screen
                }) {
                    Image(systemName: "chevron.left") // Custom back button icon
                        .foregroundColor(.white)
                }
            }

            ToolbarItem(placement: .principal) {
                Text("Custom Toolbar")
                    .font(.headline)
                    .foregroundColor(.white)
            }
        }
        .navigationBarBackButtonHidden(true) // Hides the default back button
    }
}

struct ToolBarScreen_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ToolBarScreen()
        }
    }
}

#Preview {
    ToolBarScreen()
}
