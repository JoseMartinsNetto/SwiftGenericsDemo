//
//  AnimationUtils.swift
//  Generics Demo
//
//  Created by Jose Martins on 22/03/21.
//

import UIKit

final class AnimationsUtils {
    
    private static var loadingMask = UIView(frame: UIScreen.main.bounds)
    
//    private static func showLoading(color: LoadingColor) {
//
//        if loadingMask.subviews.count > 0 {
//            return
//        }
//
//        loadingMask.alpha = 0
//        loadingMask.frame = UIScreen.shared.viewportBounds()
//
//        if Preferences.themeMode == .dark {
//            loadingMask.backgroundColor = UIColor.black.withAlphaComponent(0.7)
//        }else{
//            loadingMask.backgroundColor = UIColor.white.withAlphaComponent(0.7)
//        }
//
//        //  Animation
//
//        let hudSquare: CGFloat = 180
//
//        var hudCenter = loadingMask.center
//        hudCenter.x -= hudSquare/2
//        hudCenter.y -= hudSquare/2
//
//        if color == .blue {
//            loadingMask.addSubview(self.getLottieLoadingBlueAnimation(center: hudCenter, size: hudSquare))
//        }
//
//        if color == .white {
//            loadingMask.addSubview(self.getLottieLoadingWhiteAnimation(center: hudCenter, size: hudSquare))
//        }
//        //  Adding Mask
//
//        let window: UIWindow? = UIApplication.shared.windows.first
//        window?.addSubview(loadingMask)
//
//        UIView.animate(withDuration: 0.3) {
//            loadingMask.alpha = 1
//        }
//    }
//
//    private static func getLottieLoadingWhiteAnimation(center: CGPoint, size: CGFloat) -> AnimationView {
//
//        let animationView = AnimationView(name: "loading_white") // ./Application/Files
//        animationView.frame = CGRect(origin: center, size: CGSize(width: size, height: size))
//        animationView.loopMode = .loop
//        animationView.play()
//
//        return animationView
//    }
//
//    private static func getLottieLoadingBlueAnimation(center: CGPoint, size: CGFloat) -> AnimationView {
//
//        let animationView = AnimationView(name: "loading_blue") // ./Application/Files
//        animationView.frame = CGRect(origin: center, size: CGSize(width: size, height: size))
//        animationView.loopMode = .loop
//        animationView.play()
//
//        return animationView
//    }
//
//    private static func hideLoading() {
//
//        UIView.animate(withDuration: 0.5,
//                       animations: {
//                            loadingMask.alpha = 0
//                       },
//                       completion: { (finished) in
//
//                        if finished {
//
//                            loadingMask.removeFromSuperview()
//                            loadingMask = UIView(frame: UIScreen.main.bounds)
//                        }
//                    })
//    }
//
//    static func loading(_ loading: Bool, color: LoadingColor = .white) {
//        if loading {
//            AnimationsUtils.showLoading(color: color)
//        }else{
//            AnimationsUtils.hideLoading()
//        }
//    }
    
    static func makeRippleEffect(to referenceView: UIView, point: CGPoint, completion: (() -> Void)? = nil) {
        let size = referenceView.bounds.size
        
        let path = UIBezierPath(ovalIn: CGRect(x: 0, y: 0, width: size.width, height: size.height))
        
        let rippleShape = CAShapeLayer()
        rippleShape.bounds = CGRect(x: 0, y: 0, width: size.width, height: size.height)
        rippleShape.path = path.cgPath
        
        rippleShape.fillColor =  UIColor.white.withAlphaComponent(0.3).cgColor
        
        rippleShape.strokeColor = UIColor.white.withAlphaComponent(0.3).cgColor
        rippleShape.lineWidth = 1
        rippleShape.position = point
        rippleShape.opacity = 0
        
        referenceView.layer.addSublayer(rippleShape)
        
        let scaleAnin = CABasicAnimation(keyPath: "transform.scale")
        scaleAnin.fromValue = NSValue(caTransform3D: CATransform3DIdentity)
        scaleAnin.toValue = NSValue(caTransform3D: CATransform3DMakeScale(2, 2, 1))
        
        let opacityAnim = CABasicAnimation(keyPath: "opacity")
        opacityAnim.fromValue = 1
        opacityAnim.toValue = nil
        
        let animation = CAAnimationGroup()
        animation.animations = [scaleAnin, opacityAnim]
        animation.timingFunction = CAMediaTimingFunction(name: .easeInEaseOut)
        
        let duration: Double = 0.7
        let repeatCount: Double = 1
        let dispatchTime = duration * repeatCount
        
        animation.duration = CFTimeInterval(duration)
        animation.repeatCount = Float(repeatCount)
        animation.isRemovedOnCompletion = true
        
        rippleShape.add(animation, forKey: "rippleEffect")
        
        if let completion = completion {
            DispatchQueue.global().asyncAfter(deadline: .now() + dispatchTime) {
                DispatchQueue.main.async {
                    completion()
                }
            }
        }
    }
    
    static func makeBounceAnimation(animations: @escaping () -> Void, completion: ((Bool) -> Void)? = nil) {
        UIView.animate(
            withDuration: 0.9,
            delay: 0,
            usingSpringWithDamping: 0.6,
            initialSpringVelocity: 1,
            options: UIView.AnimationOptions.curveEaseInOut
        ) {
            animations()
        } completion: { isCompleted in
            if let completion = completion {
                completion(isCompleted)
            }
        }
    }
    
    static func makeBasicAnimation(animations: @escaping () -> Void, completion: ((Bool) -> Void)? = nil) {
        UIView.animate(withDuration: 0.3) {
            animations()
        } completion: { isCompleted in
            if let completion = completion {
                completion(isCompleted)
            }
        }
    }
}
