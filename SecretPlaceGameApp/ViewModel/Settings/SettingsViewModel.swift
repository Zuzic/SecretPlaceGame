import Foundation

// sourcery: builder
protocol SettingsViewModelInjection {}

final class SettingsViewModel: ObservableObject {
    private let injection: SettingsViewModelInjection
    
    init(injection: SettingsViewModelInjection) {
        self.injection = injection
    }
}
