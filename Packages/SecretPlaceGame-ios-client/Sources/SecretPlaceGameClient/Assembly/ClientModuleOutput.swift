import Foundation

// sourcery: ModuleOutput = "SecretPlaceGameClient"
public protocol ClientModuleOutput {
    var levelsRepository: LevelsRepository { get }
    var initialRepository: InitialRepository { get }
}
