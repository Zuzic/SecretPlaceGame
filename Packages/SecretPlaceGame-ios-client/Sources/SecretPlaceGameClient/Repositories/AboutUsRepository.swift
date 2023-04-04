import Foundation

// sourcery: AutoMockable
public protocol AboutUsRepository {
    func aboutUs() async -> AboutUsOutputModel?
    func updateAboutUs() async throws -> AboutUsOutputModel?
}

// sourcery: builder
protocol AboutUsRepositoryInjection {
    var restClient: RestApiClient { get }
    var storage: Storage { get }
    var initialRepository: InitialRepository { get }
}

final class AboutUsRepositoryImpl: AboutUsRepository {
    private let injection: AboutUsRepositoryInjection

    init(injection: AboutUsRepositoryInjection) {
        self.injection = injection
    }
    
    func aboutUs() async -> AboutUsOutputModel? {
        injection.storage.data?.aboutUs
    }
    
    func updateAboutUs() async throws -> AboutUsOutputModel? {
        try await injection.initialRepository.loadInitialData()
        return await aboutUs()
    }
}
