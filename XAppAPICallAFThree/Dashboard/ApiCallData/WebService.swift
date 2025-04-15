//
//  WebService.swift
//  XAppAPICallAFThree
//
//  Created by Vishal Londhe on 28/11/24.
//

import Foundation

final class WebService {
    
    static func getUsersData() async throws -> [UserModel] {
        

        
    // let urlString = "https://jsonplaceholder.typicode.com/todos"
       let urlString = "https://api.github.com/users"
        guard let url = URL(string: urlString) else {
            throw ErrorCases.invalidUrl
        }
        
        let (data, response) = try await URLSession.shared.data(from: url)
        
        guard let response = response as? HTTPURLResponse,
              response.statusCode == 200 else {
            throw ErrorCases.invalidResponse
        }
        
        do {
            let decoder = JSONDecoder()
            return try decoder.decode([UserModel].self, from: data)
        }
        catch {
            throw ErrorCases.invalidData
        }
    }
}


