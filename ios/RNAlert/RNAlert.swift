import SPAlert

@objc(RNAlert)
class RNAlert: NSObject {
  @objc(show:)
  func show(options: NSDictionary) -> Void {
    let title = options["title"] as! String
    let message = options["message"] as! String
    let duration = options["duration"] as? Float ?? 2
    var preset: SPAlertIconPreset
    var haptic: SPAlertHaptic

    switch options["preset"] as? String {
    case "error":
      preset = .error
    case "spinner":
      preset = .spinner
    case "heart":
      preset = .heart
    default:
      preset = .done
    }
    
    switch options["haptic"] as? String {
    case "error":
      haptic = .error
    case "warning":
      haptic = .warning
    case "success":
      haptic = .success
    default:
      haptic = .none
    }
    
    let view = SPAlertView(
      title: title,
      message: message,
      preset: preset
    )
    view.duration = TimeInterval(duration)
    
    DispatchQueue.main.async {
      view.present(haptic: haptic)
    }
  }
  
  @objc(dismissAll)
  func dismissAll() -> Void {
    SPAlert.dismiss()
  }
}
