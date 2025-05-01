import SwiftUI

public extension View {
    func onGamepadPressedA(_ action: @escaping () -> Void) -> some View {
        modifier(GamepadPressedA(action))
    }
    
    func onGamepadPressedB(_ action: @escaping () -> Void) -> some View {
        modifier(GamepadPressedB(action))
    }
    
    func onGamepadPressedX(_ action: @escaping () -> Void) -> some View {
        modifier(GamepadPressedX(action))
    }
    
    func onGamepadPressedY(_ action: @escaping () -> Void) -> some View {
        modifier(GamepadPressedY(action))
    }
    
    func onGamepadPressedMenu(_ action: @escaping () -> Void) -> some View {
        modifier(GamepadPressedMenu(action))
    }
    
    func onGamepadPressedOptions(_ action: @escaping () -> Void) -> some View {
        modifier(GamepadPressedOptions(action))
    }
    
    func onGamepadPressedLeftThumbstick(_ action: @escaping () -> Void) -> some View {
        modifier(GamepadPressedLeftThumbstick(action))
    }
    
    func onGamepadPressedRightThumbstick(_ action: @escaping () -> Void) -> some View {
        modifier(GamepadPressedRightThumbstick(action))
    }
    
    func onGamepadPressedLeftShoulder(_ action: @escaping () -> Void) -> some View {
        modifier(GamepadPressedLeftShoulder(action))
    }
    
    func onGamepadPressedRightShoulder(_ action: @escaping () -> Void) -> some View {
        modifier(GamepadPressedRightShoulder(action))
    }
    
    func onGamepadPressedLeftTrigger(_ action: @escaping () -> Void) -> some View {
        modifier(GamepadLeftTriggerPressedModifier(action))
    }
    
    func onGamepadPressedRightTrigger(_ action: @escaping () -> Void) -> some View {
        modifier(GamepadPressedRightTrigger(action))
    }
    
    func onGamepadPressedDpadUp(_ action: @escaping () -> Void) -> some View {
        modifier(GamepadPressedDpadUp(action))
    }
    
    func onGamepadPressedDpadDown(_ action: @escaping () -> Void) -> some View {
        modifier(GamepadPressedDpadDown(action))
    }
    
    func onGamepadPressedDpadLeft(_ action: @escaping () -> Void) -> some View {
        modifier(GamepadPressedDpadLeft(action))
    }
    
    func onGamepadPressedDpadRight(_ action: @escaping () -> Void) -> some View {
        modifier(GamepadPressedDpadRight(action))
    }
}
