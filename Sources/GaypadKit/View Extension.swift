import SwiftUI

public extension View {
    func onGamepadPressed(
        _ button: GamepadButton,
        _ action: @escaping () -> Void
    ) -> some View {
        modifier(
            GamepadButtonPressedModifier(button, action)
        )
    }
}
