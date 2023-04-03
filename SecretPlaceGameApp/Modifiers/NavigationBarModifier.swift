import SwiftUI

private struct HiddenNavigationBarModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .toolbar(.hidden, for: .navigationBar)
            .toolbarBackground(.hidden, for: .navigationBar)
            .toolbarBackground(Color.clear, for: .navigationBar)
            .navigationBarTitleDisplayMode(.inline)
    }
}


extension View {
    func hideNavigationBar() -> some View {
        self.modifier(HiddenNavigationBarModifier())
    }
}

