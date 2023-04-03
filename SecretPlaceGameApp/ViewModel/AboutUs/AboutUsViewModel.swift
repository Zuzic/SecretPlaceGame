import Foundation

// sourcery: builder
protocol AboutUsViewModelInjection {}

final class AboutUsViewModel: ObservableObject {
    private let injection: AboutUsViewModelInjection
    
    init(injection: AboutUsViewModelInjection) {
        self.injection = injection
    }
}
