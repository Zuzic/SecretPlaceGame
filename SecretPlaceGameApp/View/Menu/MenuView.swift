import SwiftUI
import SecretPlaceGameAssets

struct MenuView: View {
    @ObservedObject private var viewModel: MenuViewModel
    @State private var path: NavigationPath = .init()
    
    var body: some View {
        NavigationStack(path: $path) {
            HStack {
                Spacer()
                
                VStack(alignment: .trailing) {
                    Spacer()
                    
                    ForEach(viewModel.menuItems,
                            id: \.id) { item in
                        
                        MenuButton(menu: item) { item in
                            path.append(item)
                        }
                        .background(
                            NavigationLink("", value: item)
                        )
                    }
                    
                    Spacer()
                        .frame(height: 25)
                }
            }
            .navigationDestination(for: MenuType.self) { item in
                openEmbeddedView(at: item)
            }
        }
    }
    
    init(viewModel: MenuViewModel) {
        self.viewModel = viewModel
    }
    
    @ViewBuilder
    private func openEmbeddedView(at item: MenuType) -> some View {
        switch item {
        case .aboutUs: AboutUsView(viewModel: viewModel.aboutUsViewModel)
        case .settings: SettingsView(viewModel: viewModel.settingsViewModel)
        case .play: LevelsView(viewModel: viewModel.levlesViewModel)
        default: EmptyView()
        }
    }
}

// MARK: - MenuType
private extension MenuType {
    var id: String {
        self.rawValue
    }
}
