import SwiftUI

struct GamepadButtonPressedModifier: ViewModifier {
    @State private var controller = GamepadManager.shared
    @State private var lastActionTime: Date?
    
    private let button: GamepadButton
    private let action: () -> Void
    private let cooldown: TimeInterval?
    
    init(
        _ button: GamepadButton,
        cooldown: TimeInterval? = nil,
        action: @escaping () -> Void
    ) {
        self.button = button
        self.cooldown = cooldown
        self.action = action
    }
    
    func body(content: Content) -> some View {
        content
            .onChange(of: buttonPressedValue) {
                if buttonPressedValue {
                    if let cooldown {
                        let now = Date()
                        
                        if lastActionTime == nil || now.timeIntervalSince(lastActionTime!) >= cooldown {
                            action()
                            lastActionTime = now
                        }
                    } else {
                        action()
                    }
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
