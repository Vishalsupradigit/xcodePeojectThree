//
//  V5_AllStack.swift
//  XAppAPICallAFThree
//
//  Created by Vishal Londhe on 02/12/24.
//

import SwiftUI

struct V5_AllStack: View {
    var body: some View {
        
        VStack{
          
            VStack{
                ZStack{
                    Color.cyan
                    ScrollView(showsIndicators: false){
                        VStack{
                            ForEach(1..<20)
                            {
                                index in
                                Text("\(index)")
                                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                                    .foregroundColor(.white)
                                    .background(.orange)
                                    .font(.largeTitle)
                                    .cornerRadius(50)
                            }
                        }.padding(.all)
                    }
                }
                
            }
            VStack{
                ZStack{
                    Color.mint
                    
                    ScrollView(.horizontal) {
                        HStack{
                            ForEach(1..<20)
                            {
                                index in
                                Text("\(index)")
                                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                                    .foregroundColor(.white)
                                    .background(.orange)
                                    .font(.largeTitle)
                                    .cornerRadius(50)
                            }
                        }.padding(.all)
                    }.padding(10)
                }
                
            }
        }
        .ignoresSafeArea(.all)
        
     
        
    }
}

#Preview {
    V5_AllStack()
}
