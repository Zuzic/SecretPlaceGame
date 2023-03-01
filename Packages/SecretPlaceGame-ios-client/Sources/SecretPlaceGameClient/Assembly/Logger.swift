import SecretPlaceGameLogger

enum Logger: String, SecretPlaceGameLogger.Logger {
    var scope: String { "Client:\(rawValue)".uppercased() }

    case general
    case rest
}
