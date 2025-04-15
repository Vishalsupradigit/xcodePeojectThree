//
//  V1_Introduction.swift
//  XAppAPICallAFThree
//
//  Created by Vishal Londhe on 02/12/24.
//

import SwiftUI

struct V1_Introduction: View {
    var body: some View {
        VStack{
            Text("Introduction")
                .font(.title)
            
            
            VStack{
                Text("Demo Text Name")
                    .padding()
                    .font(.subheadline)
                    .bold()
                    .foregroundColor(.blue)
                    .underline()
                    .background(Color.yellow)
                
            }
            
        }
    }
}

#Preview {
    V1_Introduction()
}
