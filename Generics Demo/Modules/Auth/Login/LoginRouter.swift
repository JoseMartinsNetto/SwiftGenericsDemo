//
//  LoginRouter.swift
//
//  Created by José Martins on 22/03/2021.
//

import UIKit

class LoginRouter: BaseRouter {
    
    let storyboard = UIStoryboard(name: "Auth", bundle: nil)
    
    override init() {
        super.init()
        
        let vc = storyboard.instantiateViewController(withIdentifier: "LoginView")
        
        if let controller = vc as? LoginViewController {
            
            let presenter = LoginPresenter(delegate: controller)
            controller.presenter = presenter
            controller.presenter.view = controller
            controller.presenter.router = self
            
            viewController = controller
        }
    }
}
