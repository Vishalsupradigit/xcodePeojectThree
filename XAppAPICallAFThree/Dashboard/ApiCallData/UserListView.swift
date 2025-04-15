//
//  UserListView.swift
//  XAppAPICallAFThree
//
//  Created by Vishal Londhe on 28/11/24.



import SwiftUI
import CoreData

struct UserListView: View {
    
    @ObservedObject var viewModel = UserListViewModel()
    
    var body: some View {
     
        NavigationStack
        {
            VStack{
                ZStack{
                    Color.blue.ignoresSafeArea()
                    
                    
                    List(viewModel.users ?? [], id: \.id){ user in
                        
                        HStack{
                            
                            
                            VStack{
                                AsyncImage(url: URL(string: user.avatarURL ?? ""))
                                { image in
                                    image
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .clipShape(Circle())
                                } placeholder: {
                                    Circle()
                                        .foregroundColor(.teal)
                                }
                                .frame(width: 50, height: 50)
                                
                            }.background(Color.black)
                            
                            
                            
                            VStack (alignment: .leading)
                            {
                                HStack{
                                    
                                    Text(user.login ?? "")
                                        .font(.title)
                            
                                    Spacer()
                                    
                                    Text("\(user.id ?? 0)")
                                        .foregroundColor(.blue)
                                        
                                }
                                
                                Text("App Url :- \(user.url ?? "")")
                                    .font(.caption)
                                    .foregroundColor(.red)

                                Text("App Id :- \(user.nodeID ?? "")")
                                    .font(.caption)
                                    .foregroundColor(.red)

                            }
                            .background(Color.gray)
                            
                        }
                    }
                    
                    // Progress bar
                    if viewModel.isloading {
                        ProgressView()
                            .scaleEffect(2.0, anchor: .center)
                            .progressViewStyle(CircularProgressViewStyle(tint: .red))
                    }
                    
                }
            }
            
        }
        .task {
            await viewModel.getUsers()
        }
        
        // Aleart Dailog
        .alert(isPresented: $viewModel.shouldShowError)  {
            return Alert(title: Text ("Error"),
                         message: Text( viewModel.errorMessage ?? "")
            )
        }
        
        
            
    }
    
        
}


#Preview {
    UserListView()
}




