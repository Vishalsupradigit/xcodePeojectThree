//
//  ListwithDeleteAction.swift
//  XAppAPICallAFThree
//
//  Created by Vishal Londhe on 17/12/24.
//

//import SwiftUI
//
//struct ListwithDeleteAction: View {
//    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//    }
//}
//
//#Preview {
//    ListwithDeleteAction()
//}



import SwiftUI

struct ListwithDeleteAction: View {
    @State private var users = [
        // Your users array goes here
        User(id: 1, image: "https://via.placeholder.com/150?text=Man", name: "John Doe", email: "john.doe@example.com", mobile: "1234567890"),
        // Add all the users here...
    ]
    
    var body: some View {
        List {
            ForEach(users, id: \.id) { user in
                HStack {
                    AsyncImage(url: URL(string: user.image)) { image in
                        image.resizable()
                            .scaledToFit()
                            .frame(width: 50, height: 50)
                            .clipShape(Circle())
                    } placeholder: {
                        ProgressView()
                    }
                    
                    VStack(alignment: .leading) {
                        Text(user.name)
                            .font(.headline)
                        Text(user.email)
                            .font(.subheadline)
                        Text(user.mobile)
                            .font(.subheadline)
                    }
                }
            }
            .onDelete(perform: delete)
        }
    }
    
    private func delete(at offsets: IndexSet) {
        users.remove(atOffsets: offsets)
    }
}

#Preview {
    ListwithDeleteAction()
}


