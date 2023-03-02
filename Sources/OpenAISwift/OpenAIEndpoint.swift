//
//  Created by Adam Rush - OpenAISwift
//

import Foundation

enum Endpoint {
    enum Image {
        case generations
        case edits
        case variations
    }
    
    case completions
    case edits
    case image(type: Image)
    case chat
}

extension Endpoint {
    var path: String {
        switch self {
        case .completions:
            return "/v1/completions"
        case .edits:
            return "/v1/edits"
        case .image(.generations):
            return "/v1/image/generations"
        case .image(.edits):
            return "/v1/image/edits"
        case .image(.variations):
            return "/v1/image/variations"
        case .chat:
            return "/v1/chat/completions"
        }
    }
    
    var method: String {
        switch self {
        case .completions, .edits, .image, .chat:
            return "POST"
        }
    }
    
    func baseURL() -> String {
        switch self {
        case .completions, .edits, .image, .chat:
            return "https://api.openai.com"
        }
    }
}
