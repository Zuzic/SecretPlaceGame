import Foundation
import Moya

enum AppRouter {
    case data
}

extension AppRouter: TargetType {
    var sampleData: Data {
        return Data()
    }

    var task: Task {
        switch self {
        case .data:
            return .requestPlain
        }
    }

    var headers: [String: String]? {
        return ["Content-Type": "application/json"]
    }

    var method: Moya.Method {
        return .get
    }

    var path: String {
        switch self {
        case .data: return "/data.json"
        }
    }
}
