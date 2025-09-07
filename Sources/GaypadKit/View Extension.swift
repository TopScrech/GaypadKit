import SwiftUI

public extension View {
    func onGamepadPressed(
        _ button: GamepadButton,
        cooldown: TimeInterval? = nil,
        action: @escaping () -> Void
    ) -> some View {
        modifier(
            GamepadButtonPressedModifier(button, cooldown: cooldown, action: action)
        )
    }
}
