// Generated using Sourcery 2.0.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT


import Foundation
import Foundation
import Foundation
import Foundation


// MARK: - AboutUsViewModelInjection

final class AboutUsViewModelInjectionImpl: AboutUsViewModelInjection {
    private let injector: Injector
    fileprivate init(injector: Injector) {
        self.injector = injector
    }
}

extension Injector {
    func build() -> AboutUsViewModelInjection {
        AboutUsViewModelInjectionImpl(injector: self)
    }
}
// MARK: - LevelsViewModelInjection

final class LevelsViewModelInjectionImpl: LevelsViewModelInjection {
    private let injector: Injector
    fileprivate init(injector: Injector) {
        self.injector = injector
    }
}

extension Injector {
    func build() -> LevelsViewModelInjection {
        LevelsViewModelInjectionImpl(injector: self)
    }
}
// MARK: - MenuViewModelInjection

final class MenuViewModelInjectionImpl: MenuViewModelInjection {
    private let injector: Injector
    fileprivate init(injector: Injector) {
        self.injector = injector
    }

    var aboutUsViewModelInjection: AboutUsViewModelInjection {
        AboutUsViewModelInjectionImpl(injector: injector)
    }

    var settingsViewModelInjection: SettingsViewModelInjection {
        SettingsViewModelInjectionImpl(injector: injector)
    }

    var levelsViewModelInjection: LevelsViewModelInjection {
        LevelsViewModelInjectionImpl(injector: injector)
    }
}

extension Injector {
    func build() -> MenuViewModelInjection {
        MenuViewModelInjectionImpl(injector: self)
    }
}
// MARK: - SettingsViewModelInjection

final class SettingsViewModelInjectionImpl: SettingsViewModelInjection {
    private let injector: Injector
    fileprivate init(injector: Injector) {
        self.injector = injector
    }
}

extension Injector {
    func build() -> SettingsViewModelInjection {
        SettingsViewModelInjectionImpl(injector: self)
    }
}
