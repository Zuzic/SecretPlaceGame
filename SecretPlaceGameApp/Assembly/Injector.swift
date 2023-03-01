import Foundation
// sourcery:inline:Injector.ModuleImports
import SecretPlaceGameClient

// sourcery:end
import SecretPlaceGameCommon

final class Injector {
    // sourcery:inline:Injector.ModuleDefenition
    @LazyAtomic private(set) var clientModuleOutput: ClientModuleOutput
   
    // sourcery:end

    static let injector = Injector()

    let settings = Settings()

    private init() {
        // sourcery:inline:Injector.ModuleInitialization
        _clientModuleOutput.initializer = { [unowned self] in ClientModule(injection: build()) }
      
        // sourcery:end
    }
}
