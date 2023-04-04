import Foundation
import SecretPlaceGameClient

// sourcery: builder
protocol LevelViewModelInjection {
    var levelsRepository: LevelsRepository { get }
}

final class LevelViewModel: ObservableObject {
    private let injection: LevelViewModelInjection
    
    @Published var levels: [LevelOutputModel] = []
    
    init(injection: LevelViewModelInjection) {
        self.injection = injection
    }
    
    func onAppear() {
    }
}
