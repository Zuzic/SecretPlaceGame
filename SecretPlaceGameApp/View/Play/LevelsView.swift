import SwiftUI

struct LevelsView: View {
    @ObservedObject private var viewModel: LevelsViewModel
    
    var body: some View {
        VStack {
            Text("Our levels")
        }
        .backButtonModifier()
    }
    
    init(viewModel: LevelsViewModel) {
        self.viewModel = viewModel
    }
}
