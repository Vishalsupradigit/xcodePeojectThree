//
//  HideAndShow.swift
//  XAppAPICallAFThree
//
//  Created by Vishal Londhe on 04/02/25.
//





import SwiftUI

struct HideAndShow: View {
    @State private var showCaseInfoArea = false
    @State private var showProvisionalArea = false
    @State private var showProceduresArea = false

    var body: some View {
        VStack(spacing: 16) {
            Button(action: {
                showCaseInfoArea.toggle()
            }) {
                Text("Red Button")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.red)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
            
            if showCaseInfoArea {
                Color.red
                    .frame(height: 100)
                    .cornerRadius(8)
            }

            Button(action: {
                showProvisionalArea.toggle()
            }) {
                Text("Blue Button")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
            
            if showProvisionalArea {
                Color.blue
                    .frame(height: 100)
                    .cornerRadius(8)
            }

            Button(action: {
                showProceduresArea.toggle()
            }) {
                Text("Green Button")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
            
            if showProceduresArea {
                Color.green
                    .frame(height: 100)
                    .cornerRadius(8)
            }
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    HideAndShow()
}
