//
//  File.swift
//  
//
//  Created by CandyBook on 2023/2/25.
//

import Foundation

struct ImageCommand: Encodable {
    let prompt: String
    let number: Int
    let size: String
    
    enum CodingKeys: String, CodingKey {
        case prompt
        case number = "n"
        case size
    }
}
