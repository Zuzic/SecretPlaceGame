import SwiftUI
import SecretPlaceGameAssets

struct LevelView: View {
    @ObservedObject private var viewModel: LevelViewModel
    
    var body: some View {
        VStack {
           Text("Game area")
        }
        .backButtonModifier()
        .background(Asset.Icons.backgroundImage.swiftUIImage)
        .onAppear {
            viewModel.onAppear()
        }
    }
    
    init(viewModel: LevelViewModel) {
        self.viewModel = viewModel
    }
}
