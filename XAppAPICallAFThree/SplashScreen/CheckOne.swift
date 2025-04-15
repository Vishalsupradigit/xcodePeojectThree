//
//  CheckOne.swift
//  XAppAPICallAFThree
//
//  Created by Vishal Londhe on 14/01/25.
//

import SwiftUI

struct CheckOne: View {
    
    var patientName: String = " old "// Accept the name value
    
    var body: some View {
        NavigationStack {
        
                ZStack {
                    
                    ScrollView {
                    
                        
                        
                        
                        VStack{
                            Text("Name :")
                                .foregroundColor(.gray)
                                .padding(.top, 25)
                                .padding(.leading, 14)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            
                            Text(patientName) // Display the passed name
                                                    .foregroundColor(.mint)
                                                    .padding(.top, 1)
                                                    .padding(.leading, 14)
                                                    .frame(maxWidth: .infinity, alignment: .leading)
                                                    .bold()
                            
                            Text("Mumbai, Maharashtra, India")
                                .foregroundColor(.black)
                                .padding(.top, 1)
                                .padding(.leading, 14)
                                .frame(maxWidth: .infinity, alignment: .leading)
                        }
                    }
                    
        
           
                    
                }
            
        }
    }
}

#Preview {
    CheckOne()
}
