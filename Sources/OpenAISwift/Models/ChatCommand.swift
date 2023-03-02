//
//  File.swift
//  
//
//  Created by CandyBook on 2023/3/2.
//

import Foundation

public struct ChatMessage: Encodable {
    let role: String
    let content: String
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
