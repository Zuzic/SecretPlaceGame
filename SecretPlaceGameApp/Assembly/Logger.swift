import SecretPlaceGameLogger

enum Logger: String, SecretPlaceGameLogger.Logger {
    var scope: String { "APP:\(rawValue)".uppercased() }

    case general
    case coordinator
    case viewModel
    case view
}
