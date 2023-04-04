import SwiftUI
import SecretPlaceGameAssets

struct AboutUsView: View {
    @ObservedObject private var viewModel: AboutUsViewModel
    
    var body: some View {
        VStack {
            Text("About us")
        }
        .backButtonModifier()
        .background(Asset.Icons.backgroundImage.swiftUIImage)
    }
    
    init(viewModel: AboutUsViewModel) {
        self.viewModel = viewModel
    }
}
