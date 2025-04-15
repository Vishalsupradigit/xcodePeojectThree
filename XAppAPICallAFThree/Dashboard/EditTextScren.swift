//
//  EditTextScren.swift
//  XAppAPICallAFThree
//
//  Created by Vishal Londhe on 06/02/25.

//Provisional
// ProvisionalEditText Add Here

import SwiftUI

struct EditTextScren: View {
    @State private var ProvisionalText: String = ""
    @State private var ProvisionalTextHeight: CGFloat = 100  // Initial height for ~3 lines

    var body: some View {
        VStack {
            DynamicTextFieldProvisional(text: $ProvisionalText, ProvisionalTextHeight: $ProvisionalTextHeight)
                .frame(height: ProvisionalTextHeight)  // Expands based on content height
                .padding(8)
                .background(Color.white)
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(Color.red, lineWidth: 2)
                )
                .cornerRadius(20)
            Spacer()
        }
        .padding()
    }
}

struct DynamicTextFieldProvisional: View {
    @Binding var text: String
    @Binding var ProvisionalTextHeight: CGFloat

    var body: some View {
        TextEditor(text: $text)
            .frame(minHeight: ProvisionalTextHeight, maxHeight: .infinity)
            .background(
                GeometryReader { geometry in
                    Color.clear
                        .onChange(of: text) { _ in
                            adjustHeight(geometry: geometry)
                        }
                }
            )
            .onAppear {
                DispatchQueue.main.async {
                    ProvisionalTextHeight = calculateHeight(for: text)
                }
            }
    }

    private func adjustHeight(geometry: GeometryProxy) {
        let calculatedHeight = calculateHeight(for: text)
        if calculatedHeight != ProvisionalTextHeight {
            ProvisionalTextHeight = max(60, calculatedHeight)  // Ensure minimum height for ~3 lines
        }
    }

    private func calculateHeight(for text: String) -> CGFloat {
        let uiFont = UIFont.systemFont(ofSize: 16)
        let width = UIScreen.main.bounds.width - 10  // Account for padding and border
        let textSize = text.boundingRect(
            with: CGSize(width: width, height: CGFloat.infinity),
            options: .usesLineFragmentOrigin,
            attributes: [.font: uiFont],
            context: nil
        )
        return textSize.height + 80  // Add padding for a comfortable height
    }
}


#Preview {
    EditTextScren()
}
