//
//  CantinaAppApp.swift
//  CantinaApp
//
//  Created by Yury Zenko on 06/02/2023.
//

import SwiftUI

@main
struct CantinaAppApp: App {
    var body: some Scene {
        WindowGroup {
            MenuView(viewModel: .init(injection: Injector.injector.build()))
        }
    }
}
