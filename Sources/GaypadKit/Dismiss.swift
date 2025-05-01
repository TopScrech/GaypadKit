import SwiftUI

public struct DismissWithGamepad: ViewModifier {
    @Environment(\.dismiss) private var dismiss
    
    public func body(content: Content) -> some View {
        content
            .onGamepadPressed(.b) {
                dismiss()
            }
    }
}

public extension View {
    func dismissWithGamepad() -> some View {
        modifier(DismissWithGamepad())
    }
}
