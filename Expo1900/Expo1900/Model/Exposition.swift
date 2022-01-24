import Foundation

struct Exposition: Codable {
    let title: String
    let visitors: Int
    let location: String
    let duration: String
    let description: String
    
    var formattedVisitors: String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        
        guard let formatted = formatter.string(for: visitors) else {
            return ""
        }
        
        return formatted
    }
}
