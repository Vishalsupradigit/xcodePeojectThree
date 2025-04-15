//
//  ErrorCases.swift
//  XAppAPICallAFThree
//
//  Created by Vishal Londhe on 28/11/24.
//

import Foundation

enum ErrorCases: LocalizedError{
    case invalidUrl
    case invalidResponse
    case invalidData
    
    var errorDescription: String?{
        switch self {
        case .invalidUrl:
            return "Invalid URL found."
            
        case .invalidResponse :
            return "Invalid response found."
            
        case .invalidData:
            return "Invalid data found."
        }
    }
}
