//
//  V7_BottomSheeth.swift
//  XAppAPICallAFThree
//
//  Created by Vishal Londhe on 02/12/24.
//

import SwiftUI

struct V7_BottomSheeth: View {
    
    @State var isOpen = false
    
    var body: some View {
        Button("Click Here")
        {
            isOpen.toggle()
        }
        .sheet(isPresented: $isOpen, content: {
            BottomShet()
        })
    }
}

struct BottomShet : View {
    var body: some View {
        Text("New Created sheet")
            .presentationDetents([.height(500)])
    }
}

#Preview {
    V7_BottomSheeth()
}
