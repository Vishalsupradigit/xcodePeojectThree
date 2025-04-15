//
//  UserDetailView.swift
//  XAppAPICallAFThree
//
//  Created by Vishal Londhe on 17/12/24.
//

//import SwiftUI
//
//struct UserDetailView: View {
//    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//    }
//}
//
//#Preview {
//    UserDetailView()
//}


import SwiftUI

struct UserDetailView: View {
    let user: User

    var body: some View {
        VStack {
            AsyncImage(url: URL(string: user.image)) { image in
                image.resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 150)
                    .clipShape(Circle())
            } placeholder: {
                ProgressView()
            }

            Text(user.name)
                .font(.largeTitle)
                .padding(.top)

            Text(user.email)
                .font(.body)
                .foregroundColor(.gray)
                .padding(.top, 2)

            Text("Mobile: \(user.mobile)")
                .font(.headline)
                .padding(.top, 10)

            Spacer()
        }
        .padding()
        .navigationTitle(user.name)
    }
}


