import SecretPlaceGameLogger

enum Logger: String, SecretPlaceGameLogger.Logger {
    var scope: String { "CommonCore:\(rawValue)".uppercased() }

    case fetchContainer
    case pageFetcher
}
