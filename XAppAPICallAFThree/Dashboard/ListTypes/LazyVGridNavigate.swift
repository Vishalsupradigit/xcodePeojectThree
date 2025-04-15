import SwiftUI

struct LazyVGridNavigate: View {
    
    @State private var isSearchOn: Bool = false
    @State private var searchText: String = ""
    @State private var selectedUsers: Set<Int> = [] // Set to track selected rows
    @State private var selectedOption = "All"
    
    let users = [
        User(id: 1, image: "https://via.placeholder.com/150?text=Man", name: "John Doe", email: "P00043", mobile: "10:00"),
        User(id: 2, image: "https://via.placeholder.com/150?text=Man", name: "Alice Smith", email: "P00042", mobile: "11:00"),
        User(id: 3, image: "https://via.placeholder.com/150?text=Man", name: "Bob Johnson", email: "P00041", mobile: "12:00"),
        User(id: 4, image: "https://via.placeholder.com/150?text=Man", name: "Charlie Brown elbo", email: "P00040", mobile: "01:00"),
    ]
    
    struct User: Identifiable {
        let id: Int
        let image: String
        let name: String
        let email: String
        let mobile: String
    }
    
    var filteredUsers: [User] {
        if searchText.isEmpty {
            return users
        } else {
            return users.filter { $0.name.localizedCaseInsensitiveContains(searchText) }
        }
    }
    
    var body: some View {
        NavigationStack {
            VStack {
        
                
                
                
                HStack {
                    Button(action: {
                    }) {
                        Image(systemName: "xmark")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .foregroundColor(.red)
                            .padding(.vertical,10)
                            
                    }
                    
                    Spacer()
                    
                    Text("Select Diagnosis")
                        .foregroundColor(.black)
                        .font(.system(size: 25))
                    
                    Text("(")
                       
                    Text("\(selectedUsers.count)")
                        .padding(.leading,-5)
                        .padding(.trailing,-5)
                    
                    Text(")")
                       
                    
                    Spacer()
                    
                   
                    
                    
                    // Next button to navigate to the next screen with selected items
                    NavigationLink(destination: SelectedUsersScreen(selectedUsers: Array(selectedUsers))) {
                        Text("Done")
                            .foregroundColor(.blue)
                            .font(.system(size: 25))
                            .bold()
                    }
                    .disabled(selectedUsers.isEmpty) // Disable button if no users selected
                }
                .padding(.horizontal)
                
                
                
                HStack{
                    Image(systemName: "magnifyingglass")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .foregroundColor(.blue)
                        .padding(.leading,15)
                    
                    TextField("Search", text: $searchText)
                        .padding(10)
                        .cornerRadius(8)
                        .multilineTextAlignment(.leading)
                }
                .background(Color.blue.opacity(0.1)) // Replace `.blueBackground` if not defined
                
                
             //  Horizontal toggle Button for Recent and all
                VStack{
                    HStack(spacing: 0) {
                        
                        Button(action: { selectedOption = "Recent" }) {
                            HStack {
                               // Image(systemName: "camera") // Camera icon for "Photo"
                                Text("Recent")
                            }
                            .font(.body)
                            .frame(maxWidth: .infinity, minHeight: 40)
                            .foregroundColor(selectedOption == "Recent" ? .white : .black)
                            .background(selectedOption == "Recent" ? Color.blue : Color.clear)
                            .clipShape(Capsule())
                        }
                        
                        Button(action: { selectedOption = "All" }) 
                        {
                            HStack {
                              //  Image(systemName: "keyboard") // Keyboard icon for "Type"
                                Text("All")
                            }
                            .font(.body)
                            .frame(maxWidth: .infinity, minHeight: 40)
                            .foregroundColor(selectedOption == "All" ? .white : .black)
                            .background(selectedOption == "All" ? Color.blue : Color.clear)
                            .clipShape(Capsule())
                        }
                        
                     
                    }
                //    .padding(3)
                    .background(RoundedRectangle(cornerRadius: 20).fill(Color.gray.opacity(0.2))) // Background color
                    .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.clear, lineWidth: 1)) // Transparent border
                    .padding(.horizontal)
                }
                .padding(.top,-8)

                ScrollView {
                    LazyVStack(spacing: 15) {
                        ForEach(filteredUsers, id: \.id) { user in
                            Button(action: {
                                // Toggle selection
                                if selectedUsers.contains(user.id) {
                                    selectedUsers.remove(user.id)
                                } else {
                                    selectedUsers.insert(user.id)
                                }
                            }) {
                                HStack {
                                    Text(user.name)
                                        .bold()
                                        .font(.system(size: 20))
                                        .foregroundColor(.gray)
                                        .lineLimit(1)
                                        .truncationMode(.tail)

                                    Spacer()
                                    
                                    // Display checkmark if selected
                                    if selectedUsers.contains(user.id) {
                                        Image(systemName: "checkmark")
                                            .foregroundColor(.green)
                                    }
                                }
                                .padding(.horizontal)
                            }
                            Divider()
                                .padding(.horizontal)
                        }
                    }
                }.padding(.top,10)
                
         
            }
        }
    }
}

struct SelectedUsersScreen: View {
    var selectedUsers: [Int] // Pass the selected user IDs to this screen
    
    let users = [
        User(id: 1, image: "https://via.placeholder.com/150?text=Man", name: "John Doe", email: "P00043", mobile: "10:00"),
        User(id: 2, image: "https://via.placeholder.com/150?text=Man", name: "Alice Smith", email: "P00042", mobile: "11:00"),
        User(id: 3, image: "https://via.placeholder.com/150?text=Man", name: "Bob Johnson", email: "P00041", mobile: "12:00"),
        User(id: 4, image: "https://via.placeholder.com/150?text=Man", name: "Charlie Brown elbo", email: "P00040", mobile: "01:00"),
    ]
    
    var selectedUserDetails: [User] {
        users.filter { selectedUsers.contains($0.id) }
    }
    
    var body: some View {
        List(selectedUserDetails) { user in
            HStack {
                Text(user.name)
                    .font(.headline)
                Spacer()
                Text(user.email)
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
        }
        .navigationTitle("Selected Users")
    }
}

#Preview {
    LazyVGridNavigate()
}
