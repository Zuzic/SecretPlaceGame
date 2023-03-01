// sourcery: ModuleDependecy = "SecretPlaceGameClient"
public protocol ClientModuleDependency {
    var settings: ClientModuleSettings { get }
}

// sourcery: ModuleSettings = "SecretPlaceGameClient"
public protocol ClientModuleSettings: AnyObject {
    var isFirstLaunch: Bool { get set }
    var restEndpoint: String { get }
}
