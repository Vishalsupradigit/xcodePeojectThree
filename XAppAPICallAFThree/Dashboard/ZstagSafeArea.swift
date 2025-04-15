//
//  ZstagSafeArea.swift
//  XAppAPICallAFThree
//
//  Created by Vishal Londhe on 13/02/25.
//

//import SwiftUI
//
//struct ZstagSafeArea: View {
//    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//    }
//}
//
//#Preview {
//    ZstagSafeArea()
//}


import SwiftUI

struct ZstagSafeArea: View {
    var body: some View {
        ZStack {
            // Set the background color for the entire screen, including the top safe area
            Color.blue
                .ignoresSafeArea() // This covers the entire screen, including the status bar
            
            VStack {
                Text("Hello, SwiftUI!")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .padding()
                Spacer()
            }
            .background(.red)
        }
    }
}

struct ZstagSafeArea_Previews: PreviewProvider {
    static var previews: some View {
        ZstagSafeArea()
    }
}
