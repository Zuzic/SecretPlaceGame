import Foundation

// sourcery: builder
protocol LevelsViewModelInjection {}

final class LevelsViewModel: ObservableObject {
    private let injection: LevelsViewModelInjection
    
    init(injection: LevelsViewModelInjection) {
        self.injection = injection
    }
}
