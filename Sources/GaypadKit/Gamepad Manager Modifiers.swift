import SwiftUI

struct GamepadButtonPressedModifier: ViewModifier {
    @State private var controller = GamepadManager.shared
    private let button: GamepadButton
    private let action: () -> Void
    
    init(_ button: GamepadButton, _ action: @escaping () -> Void) {
        self.button = button
        self.action = action
    }
    
    func body(content: Content) -> some View {
        content
            .onChange(of: buttonPressedValue) {
                if buttonPressedValue {
                    action()
                }
            }
    }
    
    private var buttonPressedValue: Bool {
        switch button {
        case .a:               controller.aPressed
        case .b:               controller.bPressed
        case .x:               controller.xPressed
        case .y:               controller.yPressed
        case .menu:            controller.menuPressed
        case .options:         controller.optionsPressed
        case .leftThumbstick:  controller.leftThumbstickPressed
        case .rightThumbstick: controller.rightThumbstickPressed
        case .leftShoulder:    controller.leftShoulderPressed
        case .rightShoulder:   controller.rightShoulderPressed
        case .leftTrigger:     controller.leftTriggerPressed
        case .rightTrigger:    controller.rightTriggerPressed
        case .dpadUp:          controller.dpadUpPressed
        case .dpadDown:        controller.dpadDownPressed
        case .dpadLeft:        controller.dpadLeftPressed
        case .dpadRight:       controller.dpadRightPressed
        }
    }
}
