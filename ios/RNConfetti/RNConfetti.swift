import SPConfetti

@objc(RNConfetti)
class RNConfetti: NSObject {
    @objc(start:)
    func start(options:NSDictionary) -> Void {
        let particles: [SPConfettiParticle] = [.arc, .star, .heart, .triangle]
        let animation: SPConfettiAnimation = .fullWidthToDown
        let duration = options["duration"] as! Float
        
        DispatchQueue.main.async {
            SPConfetti.startAnimating(animation, particles: particles, duration: TimeInterval(duration))
        }
    }
    
    @objc(stop)
    func stop() -> Void {
        DispatchQueue.main.async {
            SPConfetti.stopAnimating()
        }
    }
}
