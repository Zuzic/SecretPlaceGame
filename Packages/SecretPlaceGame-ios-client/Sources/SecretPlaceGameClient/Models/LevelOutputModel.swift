import Foundation

public struct LevelOutputModel: Codable {
    public let id: String
    public let image: URL?
    
    enum CodingKeys: String, CodingKey {
        case id
        case image
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try values.decode(String.self, forKey: .id)
        self.image = URL(string: try values.decode(String.self, forKey: .image))
    }
}
