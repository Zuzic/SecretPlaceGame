import Foundation

// sourcery: AutoMockable
public protocol LevelsRepository {
    func levels() async -> [LevelOutputModel]
    func updateLevels() async throws -> [LevelOutputModel]
}

// sourcery: builder
protocol LevelsRepositoryInjection {
    var restClient: RestApiClient { get }
    var storage: Storage { get }
    var initialRepository: InitialRepository { get }
}

final class LevelsRepositoryImpl: LevelsRepository {
    private let injection: LevelsRepositoryInjection

    init(injection: LevelsRepositoryInjection) {
        self.injection = injection
    }
    
    func levels() async -> [LevelOutputModel] {
        injection.storage.data?.levels ?? []
    }
    
    func updateLevels() async throws -> [LevelOutputModel] {
        try await injection.initialRepository.loadInitialData()
        return await levels()
    }
}
