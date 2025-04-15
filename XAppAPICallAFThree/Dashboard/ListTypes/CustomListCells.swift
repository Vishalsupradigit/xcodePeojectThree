//
//  CustomListCells.swift
//  XAppAPICallAFThree
//
//  Created by Vishal Londhe on 17/12/24.
//

//import SwiftUI
//
//struct CustomListCells: View {
//    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//    }
//}
//
//#Preview {
//    CustomListCells()
//}



import SwiftUI

struct UserRow: View {
    let user: User
    
    var body: some View {
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
}

struct CustomListCells: View {
    let users = [
    
        User(id: 1, image: "https://via.placeholder.com/150?text=Man", name: "John Doe", email: "john.doe@example.com", mobile: "1234567890"),
        User(id: 2, image: "https://via.placeholder.com/150?text=Man", name: "Alice Smith", email: "alice.smith@example.com", mobile: "1234567891"),
        User(id: 3, image: "https://via.placeholder.com/150?text=Man", name: "Bob Johnson", email: "bob.johnson@example.com", mobile: "1234567892"),
        User(id: 4, image: "https://via.placeholder.com/150?text=Man", name: "Charlie Brown", email: "charlie.brown@example.com", mobile: "1234567893"),
        User(id: 5, image: "https://via.placeholder.com/150?text=Man", name: "Diana Prince", email: "diana.prince@example.com", mobile: "1234567894"),
        User(id: 6, image: "https://via.placeholder.com/150?text=Man", name: "Ethan Hunt", email: "ethan.hunt@example.com", mobile: "1234567895"),
        User(id: 7, image: "https://via.placeholder.com/150?text=Man", name: "Fiona Glenanne", email: "fiona.glenanne@example.com", mobile: "1234567896"),
        User(id: 8, image: "https://via.placeholder.com/150?text=Man", name: "George Wilson", email: "george.wilson@example.com", mobile: "1234567897"),
        User(id: 9, image: "https://via.placeholder.com/150?text=Man", name: "Hannah Montana", email: "hannah.montana@example.com", mobile: "1234567898"),
        User(id: 10, image: "https://via.placeholder.com/150?text=Man", name: "Ian Fleming", email: "ian.fleming@example.com", mobile: "1234567899"),
        User(id: 11, image: "https://via.placeholder.com/150?text=Man", name: "Jessica Jones", email: "jessica.jones@example.com", mobile: "9876543210"),
        User(id: 12, image: "https://via.placeholder.com/150?text=Man", name: "Kevin Hart", email: "kevin.hart@example.com", mobile: "9876543211"),
        User(id: 13, image: "https://via.placeholder.com/150?text=Man", name: "Laura Croft", email: "laura.croft@example.com", mobile: "9876543212"),
        User(id: 14, image: "https://via.placeholder.com/150?text=Man", name: "Michael Scott", email: "michael.scott@example.com", mobile: "9876543213"),
        User(id: 15, image: "https://via.placeholder.com/150?text=Man", name: "Nancy Drew", email: "nancy.drew@example.com", mobile: "9876543214"),
        User(id: 16, image: "https://via.placeholder.com/150?text=Man", name: "Oscar Wilde", email: "oscar.wilde@example.com", mobile: "9876543215"),
        User(id: 17, image: "https://via.placeholder.com/150?text=Man", name: "Peter Parker", email: "peter.parker@example.com", mobile: "9876543216"),
        User(id: 18, image: "https://via.placeholder.com/150?text=Man", name: "Quinn Fabray", email: "quinn.fabray@example.com", mobile: "9876543217"),
        User(id: 19, image: "https://via.placeholder.com/150?text=Man", name: "Rachel Green", email: "rachel.green@example.com", mobile: "9876543218"),
        User(id: 20, image: "https://via.placeholder.com/150?text=Man", name: "Steve Rogers", email: "steve.rogers@example.com", mobile: "9876543219")
    
    ]
    
    var body: some View {
        List(users, id: \.id) { user in
            UserRow(user: user)
        }
    }
}


#Preview {
    CustomListCells()
}
