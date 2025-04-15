////
////  LazyVGridScreenVertical.swift
////  XAppAPICallAFThree
////
////  Created by Vishal Londhe on 17/12/24.
//
//
//
//
//import SwiftUI
//
//struct LazyVGridScreenVertical: View {
//    let users = [
//    
//        User(id: 1, image: "https://via.placeholder.com/150?text=Man", name: "John Doe", email: "P00043", mobile: "10:00"),
//        User(id: 2, image: "https://via.placeholder.com/150?text=Man", name: "Alice Smith", email: "P00042", mobile: "11:00"),
//        User(id: 3, image: "https://via.placeholder.com/150?text=Man", name: "Bob Johnson", email: "P00041", mobile: "12:00"),
//        User(id: 4, image: "https://via.placeholder.com/150?text=Man", name: "Charlie Brown elbo", email: "P00040", mobile: "01:00"),
//    
//    
//    ]
//    
//    var body: some View {
//        ScrollView {
//            LazyVStack(spacing: 20) {
//                ForEach(users, id: \.id) { user in
//                    HStack(spacing: 15) {
//                       
//                        
//                        VStack(alignment: .leading, spacing: 5) {
//                            
//                            HStack{
//                                Text(user.name)
//                                    .font(.headline)
//                                
//                                Spacer()
//                                
//                                Text("No :-  \(user.mobile)")
//                                    .font(.headline)
//                            }.background(Color.mint)
//                            
//                       
//                        }
//                        Spacer()
//                    }
//                    .padding(.horizontal)
//                }
//            }
//            .padding(.vertical)
//        }
//    }
//}
//
//
//#Preview {
//    LazyVGridScreenVertical()
//}

////cchccfccfcfcfaasaassdsdsd


import SwiftUI

struct LazyVGridScreenVertical: View {
    @State private var searchText: String = "" // State variable for search text

    let users = [
        User(id: 1, image: "https://via.placeholder.com/150?text=Man", name: "John Doe", email: "P00043", mobile: "10:00"),
        User(id: 2, image: "https://via.placeholder.com/150?text=Man", name: "Alice Smith", email: "P00042", mobile: "11:00"),
        User(id: 3, image: "https://via.placeholder.com/150?text=Man", name: "Bob Johnson", email: "P00041", mobile: "12:00"),
        User(id: 4, image: "https://via.placeholder.com/150?text=Man", name: "Charlie Brown elbo", email: "P00040", mobile: "01:00"),
    ]

    var filteredUsers: [User] {
        if searchText.isEmpty {
            return users
        } else {
            return users.filter { $0.name.localizedCaseInsensitiveContains(searchText) }
        }
    }

    var body: some View {
        VStack {
            // Search Bar
            TextField("Search by name...", text: $searchText)
                .padding(10)
                .background(Color(.systemGray6))
                .cornerRadius(8)
                .padding(.horizontal)

            // LazyVStack with filtered users
            ScrollView {
                LazyVStack(spacing: 20) {
                    ForEach(filteredUsers, id: \.id) { user in
                        HStack(spacing: 15) {
                            VStack(alignment: .leading, spacing: 5) {
                                HStack {
                                    Text(user.name)
                                        .font(.headline)
                                    
                                    Spacer()
                                    
                                    Text("No :-  \(user.mobile)")
                                        .font(.headline)
                                }
                                .background(Color.mint)
                            }
                            Spacer()
                        }
                        .padding(.horizontal)
                    }
                }
                .padding(.vertical)
            }
        }
    }
}



#Preview {
    LazyVGridScreenVertical()
}
