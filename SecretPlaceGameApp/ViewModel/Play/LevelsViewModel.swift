import Foundation
import SecretPlaceGameClient

// sourcery: builder
protocol LevelsViewModelInjection {
    var levelsRepository: LevelsRepository { get }
    
    var levelViewModelInjection: LevelViewModelInjection { get }
}

final class LevelsViewModel: ObservableObject {
    private let injection: LevelsViewModelInjection
    
    @Published var levels: [LevelOutputModel] = []
    
    init(injection: LevelsViewModelInjection) {
        self.injection = injection
    }
    
    lazy var levelViewModel: LevelViewModel = {
        return .init(injection: injection.levelViewModelInjection)
    }()
    
    func onAppear() {
        loadLevels()
    }
}

private extension LevelsViewModel {
    func loadLevels() {
        Task {
            let result = await injection.levelsRepository.levels()
            
            await MainActor.run {
                self.levels = result
            }
        }
    }
}
