import Foundation

// sourcery: builder
protocol MenuViewModelInjection {
    var aboutUsViewModelInjection: AboutUsViewModelInjection { get }
    var settingsViewModelInjection: SettingsViewModelInjection { get }
    var levelsViewModelInjection: LevelsViewModelInjection { get }
}

enum MenuType: String, Hashable {
    case play, settings, aboutUs, none
}

final class MenuViewModel: ObservableObject {
    @Published var menuItem: MenuType = .none
    
    private let injection: MenuViewModelInjection
    let menuItems: [MenuType] = [.play, .settings, .aboutUs]
    
    lazy var aboutUsViewModel: AboutUsViewModel = {
        return .init(injection: injection.aboutUsViewModelInjection)
    }()
    
    lazy var settingsViewModel: SettingsViewModel = {
        return .init(injection: injection.settingsViewModelInjection)
    }()
    
    lazy var levlesViewModel: LevelsViewModel = {
        return .init(injection: injection.levelsViewModelInjection)
    }()
    
    init(injection: MenuViewModelInjection) {
        self.injection = injection
    }
    
    func onSelect(menuItem: MenuType) {
        self.menuItem = menuItem
    }
}
