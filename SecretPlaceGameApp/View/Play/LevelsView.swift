import SwiftUI
import SecretPlaceGameAssets

struct LevelsView: View {
    @ObservedObject private var viewModel: LevelsViewModel
    @State private var isNeedOpenLevel: Bool = false
    
    var body: some View {
        let rows: [GridItem] = Array(repeating: GridItem(.flexible(), spacing: 8), count: 1)
        
        VStack {
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHGrid(rows: rows) {
                    ForEach(viewModel.levels, id: \.id) { item in
                        AsyncImage(url: item.image)
                            .onTapGesture {
                                isNeedOpenLevel.toggle()
                            }
                    }
                }
            }
        }
        .backButtonModifier()
        .background(Asset.Icons.backgroundImage.swiftUIImage)
        .onAppear {
            viewModel.onAppear()
        }
        .navigationDestination(isPresented: $isNeedOpenLevel) {
            LevelView(viewModel: viewModel.levelViewModel)
        }
    }
    
    init(viewModel: LevelsViewModel) {
        self.viewModel = viewModel
    }
}
