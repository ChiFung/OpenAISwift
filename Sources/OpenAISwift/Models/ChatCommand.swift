//
//  File.swift
//  
//
//  Created by CandyBook on 2023/3/2.
//

import Foundation

public struct ChatMessage: Codable {
    let role: String
    let content: String
    
    public init(role: String, content: String)  {
        self.role = role
        self.content = content
    }
}

struct ChatCommand: Encodable {
    let messages: [ChatMessage]
    let model: String
    let maxTokens: Int
    let temperature: Double
    
    enum CodingKeys: String, CodingKey {
        case messages
        case model
        case maxTokens = "max_tokens"
        case temperature
    }
}
