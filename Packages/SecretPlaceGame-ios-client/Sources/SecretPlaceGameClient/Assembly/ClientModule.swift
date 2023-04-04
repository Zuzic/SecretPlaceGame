import Foundation
import SecretPlaceGameCommon

// _sourcery:inline:ClientModule.UnwrapModuleDependencyImports
// _sourcery:end

// sourcery: Module = "SecretPlaceGameClient"
final public class ClientModule: ClientModuleOutput {
    @LazyAtomic private(set) var restClient: RestApiClient
    @LazyAtomic private(set) var storage: Storage
    
    @LazyAtomic public private(set) var initialRepository: InitialRepository
    @LazyAtomic public private(set) var levelsRepository: LevelsRepository
    @LazyAtomic public private(set) var aboutUsRepository: AboutUsRepository
    
    private let injection: ClientModuleDependency
    
    public init(injection: ClientModuleDependency) {
        self.injection = injection
        _initialRepository.initializer = { [unowned self] in InitialRepositoryImpl(injection: build()) }
        _levelsRepository.initializer = { [unowned self] in LevelsRepositoryImpl(injection: build()) }
        _aboutUsRepository.initializer = { [unowned self] in AboutUsRepositoryImpl(injection: build()) }
        
        _restClient.initializer = { [unowned self] in RestApiClient(injection: build()) }
        _storage.initializer =  { [unowned self] in Storage(injection: build()) }
    }
}

// _sourcery:inline:ClientModule.UnwrapModuleDependency
// swiftlint: disable: identifier_name
extension ClientModule {
    var clientModuleDependencySettings: ClientModuleSettings { injection.settings }
}
// _sourcery:end
