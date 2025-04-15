//
//  V8_ToggleMaking.swift
//  XAppAPICallAFThree
//
//  Created by Vishal Londhe on 02/12/24.
//

//import SwiftUI
//
//struct V8_ToggleMaking: View {
//    
//    @State var isToggle = false
//    
//    var body: some View {
//        VStack{
//            Toggle("Toggle in swift Ui ", isOn: $isToggle)
//                .toggleStyle(SwitchToggleStyle(tint: .red))
//            
//            if isToggle {
//                Text("Text is visible !")
//            }
//        }
//        .padding(.all )
//    }
//}
//
//#Preview {
//    V8_ToggleMaking()
//}


import SwiftUI

struct V8_ToggleMaking: View {
    @State private var isOn: Bool = false

    var body: some View {
        VStack {
            Toggle(isOn: $isOn) {
                Text("Enable Feature")
                    .font(.title)
            }
            .padding()
            
            Text(isOn ? "Feature is on" : "Feature is off")
                .font(.title2)
                .padding()
        }
        .padding()
    }
}

struct V8_ToggleMaking_Previews: PreviewProvider {
    static var previews: some View {
        V8_ToggleMaking()
    }
}

