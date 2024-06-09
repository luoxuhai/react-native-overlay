import SPIndicator

@objc(RNToast)
class RNToast: NSObject {
    @objc(show:)
    func show(options: NSDictionary) -> Void {
        let title = options["title"] as! String
        let message = options["message"] as! String
        var icon: SPIndicatorIconPreset
        var haptic: SPIndicatorHaptic
        
        switch options["icon"] as? String {
        case "error":
            icon = .error
        default:
            icon = .done
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
        
        DispatchQueue.main.async {
            SPIndicator.present(title: title, message: message, preset: icon, haptic: haptic)
        }
    }
}
