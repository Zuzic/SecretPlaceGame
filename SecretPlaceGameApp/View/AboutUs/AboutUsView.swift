import SwiftUI

struct AboutUsView: View {
    @ObservedObject private var viewModel: AboutUsViewModel
    
    var body: some View {
        VStack {
            Text("About us")
        }
        .backButtonModifier()
    }
    
    init(viewModel: AboutUsViewModel) {
        self.viewModel = viewModel
    }
}
