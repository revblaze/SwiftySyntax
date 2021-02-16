import Foundation

extension Service.Music {
    
    var id: Int {
        switch self {
        case .apple:    return 2001
        case .spotify:  return 2002
        }
    }
    
    var url: String {
        switch self {
        case .apple:    return "https://music.apple.com"
        case .spotify:  return "https://open.spotify.com"
        }
    }
    
}
