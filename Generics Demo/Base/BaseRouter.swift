//
//  BaseRouter.swift
//  Generics Demo
//
//  Created by Jose Martins on 21/03/21.
//

import UIKit

class BaseRouter {
    
    var viewController: UIViewController!
    var presentationStyles: Array<PresentationStyle> = []
    
    func getRootView() -> UIViewController {
        
        let navigationVC = UINavigationController(rootViewController: LoginRouter().viewController)
        navigationVC.navigationController?.setNavigationBarHidden(true, animated: false)
        
        return navigationVC
    }
    
    func dismiss(animated: Bool = true) {
        
        if let lastTransition = presentationStyles.last {
            
            if lastTransition == .push {
                viewController.navigationController?.popViewController(animated: animated)
            }else{
                viewController.dismiss(animated: animated, completion: nil)
            }
            
            presentationStyles.removeLast()
        }
    }
    
    func show() {
        
        presentationStyles.append(.push)
        
        UIApplication.topViewController()?.navigationController?.pushViewController(viewController, animated: true)
    }
    
    func closeAllViews(animated: Bool = true) {
        
        UIApplication.shared.windows.first?.rootViewController?.dismiss(animated: animated, completion: nil)
    }
}


