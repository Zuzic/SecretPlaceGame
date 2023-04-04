import Foundation

struct DataResponse: Codable {
    let aboutUs: AboutUsOutputModel
    let levels: [LevelOutputModel]
    
    enum CodingKeys: String, CodingKey {
        case aboutUs
        case levels
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        self.aboutUs = try values.decode(AboutUsOutputModel.self, forKey: .aboutUs)
        self.levels = try values.decode([LevelOutputModel].self, forKey: .levels)
    }
}
