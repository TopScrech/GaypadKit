import SwiftUI

struct GamepadPressedDpadUp: ViewModifier {
    @State private var controller = GamepadManager.shared
    private var action: () -> Void
    
    init(controller: GamepadManager = GamepadManager.shared, _ action: @escaping () -> Void) {
        self.controller = controller
        self.action = action
    }
    
    func body(content: Content) -> some View {
        content
            .onChange(of: controller.isDpadUpPressed) {
                if controller.isDpadUpPressed {
                    action()
                }
            }
    }
}

struct GamepadPressedDpadDown: ViewModifier {
    @State private var controller = GamepadManager.shared
    private var action: () -> Void
    
    init(controller: GamepadManager = GamepadManager.shared, _ action: @escaping () -> Void) {
        self.controller = controller
        self.action = action
    }
    
    func body(content: Content) -> some View {
        content
            .onChange(of: controller.isDpadDownPressed) {
                if controller.isDpadDownPressed {
                    action()
                }
            }
    }
}

struct GamepadPressedDpadLeft: ViewModifier {
    @State private var controller = GamepadManager.shared
    private var action: () -> Void
    
    init(controller: GamepadManager = GamepadManager.shared, _ action: @escaping () -> Void) {
        self.controller = controller
        self.action = action
    }
    
    func body(content: Content) -> some View {
        content
            .onChange(of: controller.isDpadLeftPressed) {
                if controller.isDpadLeftPressed {
                    action()
                }
            }
    }
}

struct GamepadPressedDpadRight: ViewModifier {
    @State private var controller = GamepadManager.shared
    private var action: () -> Void
    
    init(controller: GamepadManager = GamepadManager.shared, _ action: @escaping () -> Void) {
        self.controller = controller
        self.action = action
    }
    
    func body(content: Content) -> some View {
        content
            .onChange(of: controller.isDpadRightPressed) {
                if controller.isDpadRightPressed {
                    action()
                }
            }
    }
}

struct GamepadPressedA: ViewModifier {
    @State private var controller = GamepadManager.shared
    private var action: () -> Void
    
    init(
        controller: GamepadManager = GamepadManager.shared,
        _ action: @escaping () -> Void
    ) {
        self.controller = controller
        self.action = action
    }
    
    func body(content: Content) -> some View {
        content
            .onChange(of: controller.isAPressed) {
                if controller.isAPressed {
                    action()
                }
            }
    }
}

struct GamepadPressedB: ViewModifier {
    @State private var controller = GamepadManager.shared
    private var action: () -> Void
    
    init(
        controller: GamepadManager = GamepadManager.shared,
        _ action: @escaping () -> Void
    ) {
        self.controller = controller
        self.action = action
    }
    
    func body(content: Content) -> some View {
        content
            .onChange(of: controller.isBPressed) {
                if controller.isBPressed {
                    action()
                }
            }
    }
}

struct GamepadPressedX: ViewModifier {
    @State private var controller = GamepadManager.shared
    private var action: () -> Void
    
    init(
        controller: GamepadManager = GamepadManager.shared,
        _ action: @escaping () -> Void
    ) {
        self.controller = controller
        self.action = action
    }
    
    func body(content: Content) -> some View {
        content
            .onChange(of: controller.isXPressed) {
                if controller.isXPressed {
                    action()
                }
            }
    }
}

struct GamepadPressedY: ViewModifier {
    @State private var controller = GamepadManager.shared
    private var action: () -> Void
    
    init(
        controller: GamepadManager = GamepadManager.shared,
        _ action: @escaping () -> Void
    ) {
        self.controller = controller
        self.action = action
    }
    
    func body(content: Content) -> some View {
        content
            .onChange(of: controller.isYPressed) {
                if controller.isYPressed {
                    action()
                }
            }
    }
}

struct GamepadPressedMenu: ViewModifier {
    @State private var controller = GamepadManager.shared
    private var action: () -> Void
    
    init(
        controller: GamepadManager = GamepadManager.shared,
        _ action: @escaping () -> Void
    ) {
        self.controller = controller
        self.action = action
    }
    
    func body(content: Content) -> some View {
        content
            .onChange(of: controller.isMenuPressed) {
                if controller.isMenuPressed {
                    action()
                }
            }
    }
}

struct GamepadPressedOptions: ViewModifier {
    @State private var controller = GamepadManager.shared
    private var action: () -> Void
    
    init(
        controller: GamepadManager = GamepadManager.shared,
        _ action: @escaping () -> Void
    ) {
        self.controller = controller
        self.action = action
    }
    
    func body(content: Content) -> some View {
        content
            .onChange(of: controller.isOptionsPressed) {
                if controller.isOptionsPressed {
                    action()
                }
            }
    }
}

struct GamepadPressedLeftThumbstick: ViewModifier {
    @State private var controller = GamepadManager.shared
    private var action: () -> Void
    
    init(
        controller: GamepadManager = GamepadManager.shared,
        _ action: @escaping () -> Void
    ) {
        self.controller = controller
        self.action = action
    }
    
    func body(content: Content) -> some View {
        content
            .onChange(of: controller.isLeftThumbstickPressed) {
                if controller.isLeftThumbstickPressed {
                    action()
                }
            }
    }
}

struct GamepadPressedRightThumbstick: ViewModifier {
    @State private var controller = GamepadManager.shared
    private var action: () -> Void
    
    init(
        controller: GamepadManager = GamepadManager.shared,
        _ action: @escaping () -> Void
    ) {
        self.controller = controller
        self.action = action
    }
    
    func body(content: Content) -> some View {
        content
            .onChange(of: controller.isRightThumbstickPressed) {
                if controller.isRightThumbstickPressed {
                    action()
                }
            }
    }
}

struct GamepadPressedLeftShoulder: ViewModifier {
    @State private var controller = GamepadManager.shared
    private var action: () -> Void
    
    init(controller: GamepadManager = GamepadManager.shared, _ action: @escaping () -> Void) {
        self.controller = controller
        self.action = action
    }
    
    func body(content: Content) -> some View {
        content
            .onChange(of: controller.isLeftShoulderPressed) {
                if controller.isLeftShoulderPressed {
                    action()
                }
            }
    }
}

struct GamepadPressedRightShoulder: ViewModifier {
    @State private var controller = GamepadManager.shared
    private var action: () -> Void
    
    init(controller: GamepadManager = GamepadManager.shared, _ action: @escaping () -> Void) {
        self.controller = controller
        self.action = action
    }
    
    func body(content: Content) -> some View {
        content
            .onChange(of: controller.isRightShoulderPressed) {
                if controller.isRightShoulderPressed {
                    action()
                }
            }
    }
}

struct GamepadLeftTriggerPressedModifier: ViewModifier {
    @State private var controller = GamepadManager.shared
    private var action: () -> Void
    
    init(controller: GamepadManager = GamepadManager.shared, _ action: @escaping () -> Void) {
        self.controller = controller
        self.action = action
    }
    
    func body(content: Content) -> some View {
        content
            .onChange(of: controller.isLeftTriggerPressed) {
                if controller.isLeftTriggerPressed {
                    action()
                }
            }
    }
}

struct GamepadPressedRightTrigger: ViewModifier {
    @State private var controller = GamepadManager.shared
    private var action: () -> Void
    
    init(controller: GamepadManager = GamepadManager.shared, _ action: @escaping () -> Void) {
        self.controller = controller
        self.action = action
    }
    
    func body(content: Content) -> some View {
        content
            .onChange(of: controller.isRightTriggerPressed) {
                if controller.isRightTriggerPressed {
                    action()
                }
            }
    }
}
