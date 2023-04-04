// Generated using Sourcery 2.0.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

// swiftlint:disable line_length
// swiftlint:disable variable_name

import Foundation
#if os(iOS) || os(tvOS) || os(watchOS)
import UIKit
#elseif os(OSX)
import AppKit
#endif

import Combine
import SwiftUI






















public class AboutUsRepositoryMock: AboutUsRepository {

    public init() {}


    //MARK: - aboutUs

    public var aboutUsCallsCount = 0
    public var aboutUsCalled: Bool {
        return aboutUsCallsCount > 0
    }
    public var aboutUsReturnValue: AboutUsOutputModel?
    public var aboutUsClosure: (() async -> AboutUsOutputModel?)?

    public func aboutUs() async -> AboutUsOutputModel? {
        aboutUsCallsCount += 1
        if let aboutUsClosure = aboutUsClosure {
            return await aboutUsClosure()
        } else {
            return aboutUsReturnValue
        }
    }

    //MARK: - updateAboutUs

    public var updateAboutUsThrowableError: Error?
    public var updateAboutUsCallsCount = 0
    public var updateAboutUsCalled: Bool {
        return updateAboutUsCallsCount > 0
    }
    public var updateAboutUsReturnValue: AboutUsOutputModel?
    public var updateAboutUsClosure: (() async throws -> AboutUsOutputModel?)?

    public func updateAboutUs() async throws -> AboutUsOutputModel? {
        if let error = updateAboutUsThrowableError {
            throw error
        }
        updateAboutUsCallsCount += 1
        if let updateAboutUsClosure = updateAboutUsClosure {
            return try await updateAboutUsClosure()
        } else {
            return updateAboutUsReturnValue
        }
    }

}
public class InitialRepositoryMock: InitialRepository {

    public init() {}


    //MARK: - loadInitialData

    public var loadInitialDataThrowableError: Error?
    public var loadInitialDataCallsCount = 0
    public var loadInitialDataCalled: Bool {
        return loadInitialDataCallsCount > 0
    }
    public var loadInitialDataClosure: (() async throws -> Void)?

    public func loadInitialData() async throws {
        if let error = loadInitialDataThrowableError {
            throw error
        }
        loadInitialDataCallsCount += 1
        try await loadInitialDataClosure?()
    }

}
public class LevelsRepositoryMock: LevelsRepository {

    public init() {}


    //MARK: - levels

    public var levelsCallsCount = 0
    public var levelsCalled: Bool {
        return levelsCallsCount > 0
    }
    public var levelsReturnValue: [LevelOutputModel]!
    public var levelsClosure: (() async -> [LevelOutputModel])?

    public func levels() async -> [LevelOutputModel] {
        levelsCallsCount += 1
        if let levelsClosure = levelsClosure {
            return await levelsClosure()
        } else {
            return levelsReturnValue
        }
    }

    //MARK: - updateLevels

    public var updateLevelsThrowableError: Error?
    public var updateLevelsCallsCount = 0
    public var updateLevelsCalled: Bool {
        return updateLevelsCallsCount > 0
    }
    public var updateLevelsReturnValue: [LevelOutputModel]!
    public var updateLevelsClosure: (() async throws -> [LevelOutputModel])?

    public func updateLevels() async throws -> [LevelOutputModel] {
        if let error = updateLevelsThrowableError {
            throw error
        }
        updateLevelsCallsCount += 1
        if let updateLevelsClosure = updateLevelsClosure {
            return try await updateLevelsClosure()
        } else {
            return updateLevelsReturnValue
        }
    }

}
