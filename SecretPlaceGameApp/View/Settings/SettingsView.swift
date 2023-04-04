import SwiftUI
import SecretPlaceGameAssets

struct SettingsView: View {
    @ObservedObject private var viewModel: SettingsViewModel
    
    var body: some View {
        VStack {
            Text("Settings")
        }
        .backButtonModifier()
        .background(Asset.Icons.backgroundImage.swiftUIImage)
    }
    
    init(viewModel: SettingsViewModel) {
        self.viewModel = viewModel
    }
}
