import SwiftUI
import SecretPlaceGameAssets

struct MenuButton: View {
    private struct Constants {
        static var buttonSize: CGSize = .init(width: 170, height: 50)
    }
    
    private let menu: MenuType
    private var action: ((MenuType) -> Void)?
    
    private var size: CGSize {
        return Constants.buttonSize
    }
    
    var body: some View {
        HStack(spacing: 0) {
            Circle()
                .trim(from: 0.5, to: 1)
                .rotation(.degrees(270))
                .fill(menu.color)
                .frame(height: size.height)
                .offset(x: size.height/2)
            
            Text(menu.title)
                .frame(width:size.width - size.height,
                       height: size.height)
                .foregroundColor(.white)
                .font(.system(size: 25, weight: .bold))
                .background(menu.color)
            
        }
        .frame(width: size.width,
               height: size.height)
        .onTapGesture {
            action?(menu)
        }
    }
    
    init(menu: MenuType, action: @escaping (MenuType) -> Void) {
        self.action = action
        self.menu = menu
    }
}

// MARK: - MenuType
private extension MenuType {
    var title: String {
        switch self {
        case .play: return L10n.Menu.play
        case .settings: return L10n.Menu.setting
        case .aboutUs: return L10n.Menu.aboutUs
        case .none: return ""
        }
    }
    
    var color: Color {
        switch self {
        case .play: return .yellow
        case .settings: return .green
        case .aboutUs: return .blue
        case .none: return .clear
        }
    }
}
