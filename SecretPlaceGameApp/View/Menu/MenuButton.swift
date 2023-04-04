import SwiftUI
import SecretPlaceGameAssets

struct MenuButton: View {
    enum MenuButtonStyle {
        case large, medium
    }
    
    private struct Constants {
        static var mediumButtonSize: CGSize = .init(width: 170, height: 50)
        static var largeButtonSize: CGSize = .init(width: 250, height: 60)
    }
    
    private let menu: MenuType
    private let sizeStyle: MenuButtonStyle
    private var action: ((MenuType) -> Void)?
    
    private var size: CGSize {
        switch sizeStyle {
        case .large: return Constants.largeButtonSize
        case .medium: return Constants.mediumButtonSize
        }
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
    
    init(menu: MenuType,
         sizeStyle: MenuButton.MenuButtonStyle = .medium,
         action: @escaping (MenuType) -> Void) {
        self.action = action
        self.menu = menu
        self.sizeStyle = sizeStyle
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
