import SwiftUI
import SecretPlaceGameAssets

struct LevelsView: View {
    @ObservedObject private var viewModel: LevelsViewModel
    
    var body: some View {
        let rows: [GridItem] = Array(repeating: GridItem(.flexible(), spacing: 16), count: 1)
        
        VStack {
            LazyHGrid(rows: rows) {
                
            }
        }
        .backButtonModifier()
        .background(Asset.Icons.backgroundImage.swiftUIImage)
    }
    
    init(viewModel: LevelsViewModel) {
        self.viewModel = viewModel
    }
}
