import CoreData
import Foundation
// sourcery:inline:Injector.Settings.Imports
import SecretPlaceGameClient

// sourcery:end
import SecretPlaceGameAssets
import SecretPlaceGameCommon

final class Settings {
    let dataContainerURL: URL = NSPersistentContainer.defaultDirectoryURL()
    
    @UserDefault(key: "isFirstLaunch", defaultValue: true)
    var isFirstLaunch: Bool
    
    @BundleInfo(key: "REST_URL", defaultValue: { "https://zuzic.github.io/CantinaMock" }())
    var restEndpoint: String
}

// sourcery:inline:Injector.Settings
extension Settings: ClientModuleSettings {}
// sourcery:end
