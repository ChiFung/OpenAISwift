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
        }
    }
    
    var method: String {
        switch self {
        case .completions, .edits, .image:
            return "POST"
        }
    }
    
    func baseURL() -> String {
        switch self {
        case .completions, .edits, .image:
            return "https://api.openai.com"
        }
    }
}
