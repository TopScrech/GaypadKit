import GameController

@Observable
@available(iOS 17, macOS 14, tvOS 17, *)
public final class GamepadManager {
    public static let shared = GamepadManager()
    
    // Buttons
    public var aPressed = false
    public var bPressed = false
    public var xPressed = false
    public var yPressed = false
    public var menuPressed = false
    public var optionsPressed = false
    public var leftThumbstickPressed = false
    public var rightThumbstickPressed = false
    public var leftShoulderPressed = false
    public var rightShoulderPressed = false
    public var leftTriggerPressed = false
    public var rightTriggerPressed = false
    
    // D-Pad
    public var dpadUpPressed = false
    public var dpadDownPressed = false
    public var dpadLeftPressed = false
    public var dpadRightPressed = false
    
    // Battery
    public var batteryLevel: Float = -1
    
    private init() {
        NotificationCenter.default.addObserver(
            forName: .GCControllerDidConnect,
            object: nil,
            queue: .main
        ) { _ in
            self.setupControllers()
        }
        
        GCController.startWirelessControllerDiscovery(
            completionHandler: nil
        )
        
        setupControllers()
    }
    
    private func setupControllers() {
        for controller in GCController.controllers() {
            batteryLevel = controller.battery?.batteryLevel ?? -1
            
            controller.extendedGamepad?.valueChangedHandler = { [weak self] _, element in
                guard let self else {
                    return
                }
                
                let gamepad = controller.extendedGamepad
                
                func check(_ input: GCControllerButtonInput?, _ update: (Bool) -> Void) {
                    if let button = element as? GCControllerButtonInput, button == input {
                        update(button.isPressed)
                    }
                }
                
                check(gamepad?.buttonA)               { self.aPressed = $0 }
                check(gamepad?.buttonB)               { self.bPressed = $0 }
                check(gamepad?.buttonX)               { self.xPressed = $0 }
                check(gamepad?.buttonY)               { self.yPressed = $0 }
                check(gamepad?.buttonMenu)            { self.menuPressed = $0 }
                check(gamepad?.buttonOptions)         { self.optionsPressed = $0 }
                check(gamepad?.leftThumbstickButton)  { self.leftThumbstickPressed = $0 }
                check(gamepad?.rightThumbstickButton) { self.rightThumbstickPressed = $0 }
                check(gamepad?.leftShoulder)          { self.leftShoulderPressed = $0 }
                check(gamepad?.rightShoulder)         { self.rightShoulderPressed = $0 }
                check(gamepad?.leftTrigger)           { self.leftTriggerPressed = $0 }
                check(gamepad?.rightTrigger)          { self.rightTriggerPressed = $0 }
                
                if let dpad = element as? GCControllerDirectionPad {
                    let x = dpad.xAxis.value
                    let y = dpad.yAxis.value
                    
                    self.dpadUpPressed    = x == 0 && y == 1
                    self.dpadDownPressed  = x == 0 && y == -1
                    self.dpadLeftPressed  = x == -1 && y == 0
                    self.dpadRightPressed = x == 1 && y == 0
                }
            }
        }
    }
}
