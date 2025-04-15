//
//  UserListViewModel.swift
//  XAppAPICallAFThree
//
//  Created by Vishal Londhe on 28/11/24.
//

import Foundation

@MainActor
final class UserListViewModel : ObservableObject {
    
    @Published var users: [UserModel]?
    @Published var isloading = false
    @Published var shouldShowError = false
    @Published var errorMessage : String?
    
    
    func getUsers() async {
        isloading = true
        do {
            let users = try await WebService.getUsersData()
            self.users = users
            self.isloading = false
        } catch(let error){
            print(error.localizedDescription)
            self.isloading = false
            self.shouldShowError = true
            self.errorMessage = error.localizedDescription
        }
    }
    
}
