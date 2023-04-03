import SwiftUI

struct SettingsView: View {
    @ObservedObject private var viewModel: SettingsViewModel
    
    var body: some View {
        VStack {
            Text("Settings")
        }
        .backButtonModifier()
    }
    
    init(viewModel: SettingsViewModel) {
        self.viewModel = viewModel
    }
}
