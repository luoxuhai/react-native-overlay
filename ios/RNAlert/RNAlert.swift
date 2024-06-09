import SPAlert

@objc(RNAlert)
class RNAlert: NSObject {
    var alertViews: [AlertAppleMusic16View] = []
    
    @objc(show:)
    func show(options: NSDictionary) -> Void {
        let title = options["title"] as! String
        let message = options["message"] as! String
        let duration = options["duration"] as! Float
        let hapticOption = options["haptic"] as! String
        let iconOption = options["icon"] as! String
        var icon: AlertIcon
        var haptic: AlertHaptic
        
        switch iconOption {
        case "error":
            icon = .error
        case "spinner":
            icon = .spinnerLarge
        case "heart":
            icon = .heart
        default:
            icon = .done
        }
        
        switch hapticOption {
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
            guard let window = UIApplication.shared.windows.filter({ $0.isKeyWindow }).first else { return }
            
            let alertView = AlertAppleMusic16View(title: title, subtitle: message, icon: icon)
            alertView.haptic = haptic
            alertView.dismissByTap = false
            if duration > 0 {
                alertView.dismissInTime = true
                alertView.duration = TimeInterval(duration)
            } else {
                alertView.dismissInTime = false
            }
            alertView.present(on: window)
            self.alertViews.append(alertView)
        }
    }
    
    @objc(dismissAll)
    func dismissAll() -> Void {
        DispatchQueue.main.async {
            self.alertViews.removeAll { view in
                view.dismiss()
                return true
            }
        }
    }
}
