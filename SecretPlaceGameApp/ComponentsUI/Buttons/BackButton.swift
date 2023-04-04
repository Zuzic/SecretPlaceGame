import SwiftUI
import SecretPlaceGameAssets

private struct BackButton: View {
    @Environment(\.presentationMode) private var presentation
    
    private struct Constants {
        static var buttonSize: CGSize = .init(width: 150, height: 50)
    }
    
    private var size: CGSize {
        return Constants.buttonSize
    }
    
    var body: some View {
        HStack(spacing: 0) {
            
            
            Text(L10n.Btn.back)
                .frame(width:size.width - size.height,
                       height: size.height)
                .foregroundColor(.white)
                .font(.system(size: 25, weight: .bold))
                .background(.red)
            
            Circle()
                .trim(from: 0.5, to: 1)
                .rotation(.degrees(90))
                .fill(.red)
                .frame(height: size.height)
                .offset(x: -size.height/2)
            
        }
        .frame(width: size.width,
               height: size.height)
        .onTapGesture {
            presentation.wrappedValue.dismiss()
        }
    }
}

extension View {
    func backButtonModifier() -> some View {
        VStack {
            self
                .hideNavigationBar()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .overlay {
            VStack {
                Spacer()
                
                HStack {
                    BackButton()
                    
                    Spacer()
                }
                
                Spacer()
                    .frame(height: 25)
            }
        }
    }
}
