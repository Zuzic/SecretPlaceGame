// Generated using Sourcery 2.0.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT


import Foundation
import Foundation
import SecretPlaceGameClient
import Foundation
import SecretPlaceGameClient
import Foundation
import SecretPlaceGameClient
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
// MARK: - LevelViewModelInjection

final class LevelViewModelInjectionImpl: LevelViewModelInjection {
    private let injector: Injector
    fileprivate init(injector: Injector) {
        self.injector = injector
    }

    var levelsRepository: LevelsRepository {
        injector.clientModuleOutputLevelsRepository
    }
}

extension Injector {
    func build() -> LevelViewModelInjection {
        LevelViewModelInjectionImpl(injector: self)
    }
}
// MARK: - LevelsViewModelInjection

final class LevelsViewModelInjectionImpl: LevelsViewModelInjection {
    private let injector: Injector
    fileprivate init(injector: Injector) {
        self.injector = injector
    }

    var levelsRepository: LevelsRepository {
        injector.clientModuleOutputLevelsRepository
    }

    var levelViewModelInjection: LevelViewModelInjection {
        LevelViewModelInjectionImpl(injector: injector)
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

    var initialRepository: InitialRepository {
        injector.clientModuleOutputInitialRepository
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
