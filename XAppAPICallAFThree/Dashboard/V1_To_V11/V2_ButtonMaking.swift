//
//  V2_ButtonMaking.swift
//  XAppAPICallAFThree
//
//  Created by Vishal Londhe on 02/12/24.
//

import SwiftUI

struct V2_ButtonMaking: View {
    
    
    @State var tap : Int = 0
    
    var body: some View {
        
        VStack{
            Text("Button making")
                .font(.title)
                .foregroundColor(.blue)
            
            
            
            VStack{
                Button(action:  {
                    self.tap += 1
                    print("Show Me")
                })
                {
                    Text("Click Here")
                        .padding()
                        .font(.title)
                }
                .foregroundColor(.orange)
                .padding(.all)
                .background(.black)
                .cornerRadius(16)
            }
            Text("Button Click \(tap) Times ")
            
            Spacer()
            
            VStack{
                Text("All Clear")
                    .frame(width: 100,height: 100)
                    .background(Color.red)
            }
            
            
            Spacer()
            
        }
        
    }
}

#Preview {
    V2_ButtonMaking()
}
